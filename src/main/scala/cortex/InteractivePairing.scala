package cortex

import java.io.File

import cortex.moves._
import cortex.AnsiEscapeCode._

import scala.collection.mutable
import scala.io.StdIn

class InteractivePairing(pairing: Pairing) {

  private def gameState = pairing.gameState

  def printMovesToConsole(moves: List[Move]): Unit = {
    for ((move, i) <- moves.zipWithIndex) {
      Console.println("[" + (i + 1) + "] " + describeMove(move))
    }
  }

  object State {
    var maxNumberOfContinuations: Int = 8

    var skipPrintNextCommands = false
  }

  def run() {

    printMatchupEvaluations()

    while (true) {

      val nextMoves: List[Move] = pairing.nextMoves()
      if (nextMoves == Nil) {
        printMoves()
        printMatchups()
      } else {
        printGameState()
      }

      val commands: List[Command] = createNextCommands(nextMoves)

      if (State.skipPrintNextCommands) {
        State.skipPrintNextCommands = false
      } else {
        if (nextMoves != Nil) {
          val nextMove: Move = nextMoves.head

          //1println(pairing.getTeam(nextMove) + " " + nextMove.choiceDescription + ":")
        }
        commands.filter(!_.hidden).foreach(c => c.print())
      }
      Console.println("Choose action: ")
      val input: String = StdIn.readLine()

      Console.println()
      Console.println("#######################")
      Console.println()

      commands.find(c => input.matches(c.inputRegex)) match {
        case Some(command) => command.action.apply(input)
        case None => println("Unrecognized input: " + input)
      }
    }
  }

  def createNextCommands(moves: List[Move]): List[Command] = {
    val makeMoveCommands: List[Command] =
      if (moves.isEmpty)
        Nil
      else {
        val maximizing = moves.head.maximizing

        val evaluations = moves.map(move => pairing.evaluateMove(move))
        val potentialMoves =
          if (maximizing) sortMaximizing(evaluations)
          else sortMinimizing(evaluations)
        for ((eval, i) <- potentialMoves.zipWithIndex)
          yield createMakeMoveCommand(i + 1, eval.move, eval.score, potentialMoves.head.score)
      }


    val commands = new mutable.MutableList[Command]()
    commands ++= makeMoveCommands
    commands += new Command("\\?", "[?] Show commands", input => {
      commands.filter(_.hidden).foreach(c => c.print())
      State.skipPrintNextCommands = true
    }, hidden = true)

    if (pairing.moves.nonEmpty && !pairing.moves.head.maximizing) {
      commands += new Command("g", "[g] Print gambit egf file", input => {
        val egfFile: File = new EgfPrinter().printEgfMove(pairing)
        Console.println("Saved game to gambit file: " + egfFile.getName)
      })
    }
    if (pairing.moves.nonEmpty) {
      commands += new Command("u", "[u] Undo previous move", input => {
        pairing.undoMove(pairing.moves.head)
      }, hidden = false)
    }
    if (pairing.moves.nonEmpty) {
      commands += new Command("p", "[p] Print moves", input => {
        printMoves()
      }, hidden = false)
    }
    if (pairing.moves.isEmpty) {
      val startingTeam = if (pairing.maxTeamStarts) pairing.maxTeam else pairing.minTeam
      commands += new Command("t", "[t] Toggle starting team (currently " + startingTeam.name + ")", input => {
        pairing.maxTeamStarts = !pairing.maxTeamStarts
      }, hidden = false)
    }
    commands.toList
  }

  def printMoves(): Unit = {
    val originalMoves = pairing.moves.toList
    pairing.moves.foreach(m => pairing.undoMove(m))
    originalMoves.reverseIterator.foreach(m => {
      Console.println(describeMove(m))
      pairing.makeMove(m)
    })
  }

  def calculateContinuation(move: Move): List[Evaluation] = {
    pairing.makeMove(move)
    val continuationEvaluations: List[Evaluation] = pairing.evaluateMoves()
    pairing.undoMove(move)
    sortMinimizing(continuationEvaluations)
  }

  def sortMaximizing(inputList: List[Evaluation]): List[Evaluation] = {
    inputList.sortBy(_.score)(Ordering[Score].reverse)
  }

  def sortMinimizing(list: List[Evaluation]): List[Evaluation] = {
    list.sortBy(_.score)(Ordering[Score])
  }

  def createMakeMoveCommand(index: Int, move: Move, score: Score, minScore: Score) = {
    new MoveCommand(index, move, score, minScore)
  }

  class Command(val inputRegex: String, val description: String, val action: String => Unit, val hidden: Boolean = false) {
    def print(): Unit = {
      Console.println(description)
    }
  }

  class MoveCommand(val index: Int, val move: Move, score: Score, minScore: Score)
    extends Command(
      index.toString,
      "[" + index + "] " + describeMove(move) + ", score: " + score
      ,
      { input: String =>
        Console.println("Performing move [" + index + "] " + describeMove(move))
        pairing.makeMove(move)
      },
      hidden = false) {

    override def print(): Unit = {
      Console.println(description)

      val diff: Int = Math.abs(minScore.minScore - score.minScore)
      if (diff < 5 && continuationEvaluations.nonEmpty)
        Console.println(createContinuationDescription(continuationEvaluations.take(State.maxNumberOfContinuations)))
    }

    def continuationEvaluations: List[Evaluation] =
      if (move.maximizing && !move.isInstanceOf[ChooseLastMatchups])
        calculateContinuation(move)
      else
        Nil

    def createContinuationDescription(continuationEvaluations: List[Evaluation]): String =
      continuationEvaluations.map(e => "\t" + e.move.choice + ":" + e.score).mkString("\n")
  }

  def printGameState() : Unit = {
    printMatchups()

    val headers = "Team" :: "Hand" :: Nil
    val maxValues = gameState.maxTeam.name :: gameState.maxFactionsInHand.map(f => AnsiEscapeCode.color(f.name, max = true)).mkString(",") :: Nil
    val minValues = gameState.minTeam.name :: gameState.minFactionsInHand.map(f => AnsiEscapeCode.color(f.name, max = false)).mkString(",") :: Nil

    println(util.Tabulator.format(List(headers, maxValues, minValues)))
  }

  def printMatchupEvaluations(): Unit = {
    val headers: List[String] = pairing.maxTeam.name + "/" + pairing.minTeam.name :: pairing.minTeam.factions.map(f => f.name)
    val values: List[List[String]] = for (maxFaction <- pairing.maxTeam.factions) yield {
      val scores: List[String] = for (minFaction <- pairing.minTeam.factions) yield pairing.matchupEvaluations.scoreMatchup(new Matchup(maxFaction, minFaction)).toString
      maxFaction.name :: scores
    }
    Console.println(util.Tabulator.format(headers :: values))
  }

  def printMatchups(): Unit = {
    if (gameState.chosenMatchups.isEmpty)
      return

    var accumulatedScore = 0
    val matchupRows: List[List[String]] = (for ((matchup:Matchup, index) <- gameState.chosenMatchups.reverse.zipWithIndex)
      yield {
        val matchupScore: Int = gameState.scoreMatchup(matchup.maxFaction, matchup.minFaction)
        accumulatedScore += matchupScore
        matchup.maxFaction.toString :: matchup.minFaction.toString :: matchupScore.toString :: Nil
      }).toList

    Console.println("Matchups (score: " + accumulatedScore + ")")
    val headers : List[String] = pairing.maxTeam.toString :: pairing.minTeam.toString :: "Score" :: Nil

    println(util.Tabulator.format(headers :: matchupRows))
  }

  def describeMove(move: Move): String = {
    val team: Team = gameState.team(move.maximizing)
    val max: Boolean = move.maximizing

    move match {
      case putUp:PutUp => team.name + " setter ut " + color(putUp.faction.name, max)
      case counter:Counter =>
        val putUpFaction = if (max) gameState.minFactionPutUp.get else gameState.maxFactionPutUp.get
        team.name + " kontrer " + color(putUpFaction.name, !max) + " med (" + color(counter.counters._1.name, max) + ", " + color(counter.counters._2.name, max) + ")"
      case chooseAndCounter:ChooseAndCounter => team.name + " velger " +
        color(chooseAndCounter.chosenFaction.name, !max) + " vs " +
        color(gameState.getPutUp(max).get.name, max) + "(" +
        chooseAndCounter.chosenMatchupScore(gameState) + ") og kontrer " +
        color(chooseAndCounter.nonChosenFaction.name, !max) + " med (" + color(chooseAndCounter.counters._1.name, max) + ", " + color(chooseAndCounter.counters._2.name, max) + ")"
      case chooseLastMatchups:ChooseLastMatchups =>
        val factionInHand = if (max) gameState.maxFactionsInHand.head else gameState.minFactionsInHand.head
        team.name + " velger " + color(chooseLastMatchups.chosenFaction.name, !max) + " vs " + color(gameState.getPutUp(max).get.name, max) + "(" + chooseLastMatchups.chosenMatchupScore(gameState) + ") og " +
          color(chooseLastMatchups.nonChosenFaction.name, !max) + " vs " + color(factionInHand.name, max) + "(" + chooseLastMatchups.nonChosenMatchupScore(gameState) + ")"
    }
  }

}

