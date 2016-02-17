package pairing

import scala.collection.mutable
import scala.io.StdIn
import scala.util.Random

class InteractivePairing(pairing: Pairing) {

  def printMovesToConsole(moves: List[Move]): Unit = {
    for ((move, i) <- moves.zipWithIndex) {
      Console.println("[" + (i + 1) + "] " + pairing.describe(move))
    }
  }

  object State {
    var calculateScore = false
    var maxMoveFilter: List[Evaluation] => List[Evaluation] = noFilter
    var deepCalculations = false
    var skipPrintNextCommands = false
  }

  val noFilter: (List[Evaluation]) => List[Evaluation] = { ingoingList => ingoingList }

  def run() {

    while (true) {

      val nextMoves: List[Move] = pairing.nextMoves()
      if (nextMoves == Nil) {
        printMatchups(randomizeTables = true)
      }

      val commands: List[Command] = createNextCommands(nextMoves)

      if (State.skipPrintNextCommands) {
        State.skipPrintNextCommands = false
      } else {
        if (nextMoves != Nil) {
          val nextMove: Move = nextMoves.head
          println("Round: " + pairing.gameState.round)

          println(pairing.getTeam(nextMove) + " " + nextMove.choiceDescription + ":")
        }
        commands.filter(!_.hidden).foreach(c => println(c.description))
      }
      if (State.deepCalculations && nextMoves != Nil && nextMoves.head.maximizing) {
        val inverse: Pairing = pairing.inverse()
        println("Inverse:\t" + mkString(inverse, sortMaximizing(inverse.evaluateMoves())))
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

  def printMatchups(randomizeTables : Boolean = false): Unit = {
    Console.println("#Matchups#")

    val tableNumbers : Seq[Int] = Random.shuffle(1 to pairing.maxTeam.armies.size)

    var accumulatedScore = 0
    val matchupRows: List[List[String]] = (for (((matchup:Matchup, scenario), index) <- pairing.gameState.chosenMatchups.reverse.zipWithIndex)
      yield {
        val matchupScore: Int = pairing.gameState.scoreMatchup(matchup.maxArmy, matchup.minArmy, scenario)
        accumulatedScore += matchupScore
        val withoutTableNumber = matchup.maxArmy.toString :: matchup.minArmy.toString :: matchupScore.toString :: scenario.name :: Nil
        if (randomizeTables) withoutTableNumber ::: tableNumbers(index).toString ::  Nil else withoutTableNumber
      }).toList

    val withoutTableNumbers: List[String] = pairing.gameState.maxTeam.toString :: pairing.gameState.minTeam.toString :: "Score" :: "Scenario" :: Nil
    val headers : List[String] = if (randomizeTables) withoutTableNumbers ::: "Table number" :: Nil else withoutTableNumbers

    println(util.Tabulator.format(headers :: matchupRows))

    Console.println("Score: " + accumulatedScore)
    Console.println("#Matchups#")
    Console.println()
  }

  def createNextCommands(moves: List[Move]): List[Command] = {
    val makeMoveCommands: List[Command] =
      if (moves.isEmpty)
        Nil
      else if (State.calculateScore && pairing.moves.size > 1) {
        val maximizing = moves.head.maximizing

        val evaluations = moves.map(move => pairing.evaluateMove(move))
        val potentialMoves =
          if (maximizing) State.maxMoveFilter(sortMaximizing(evaluations))
          else sortMinimizing(evaluations)
        for ((eval, i) <- potentialMoves.zipWithIndex)
          yield createMakeMoveCommand(i + 1, eval.move, Some(eval.score))

      } else {
        for ((move, i) <- pairing.nextMoves().zipWithIndex)
          yield createMakeMoveCommand(i + 1, move)
      }


    val commands = new mutable.MutableList[Command]()
    commands ++= makeMoveCommands
    commands += new Command("\\?", "[?] Show commands", input => {
      commands.filter(_.hidden).foreach(c => println(c.description))
      State.skipPrintNextCommands = true
    }, hidden = true)

    commands += new Command("f[1-9]*", "[fN] Show only N best moves ", input => {
      val n = if (input.length > 1) input.drop(1).toInt else 6
      State.maxMoveFilter = { inputList: List[Evaluation] => inputList.take(n) }
    }, hidden = true)

    commands += new Command("m", "[m] Print matchups ", input => {
      printMatchups()
    }, hidden = true)

    commands += new Command("t", "[t] Print remaining matchup table", input => {
      val remaingMaxArmies = pairing.maxTeam.armies.filterNot(a => pairing.gameState.chosenMatchups.contains((m:Matchup,s:Scenario) => m.maxArmy.equals(a)))
      val remainingMinArmies = pairing.minTeam.armies.filterNot(a => pairing.gameState.chosenMatchups.contains((m:Matchup,s:Scenario) => m.minArmy.equals(a)))
      val remainingScenarios = pairing.scenarioOrder.filterNot(s => pairing.gameState.chosenMatchups.map(_._2).toSet.contains(s))
      println("TODO: REMAINING MATCHUP TABLE") // TODO
    }, hidden = true)

    if (pairing.remainingMoves == 4) {
      commands += new Command("g", "[g] Print gambit egf file", input => {
        new EgfPrinter().printEgfMove(pairing)
      })
    }
    if (pairing.moves.nonEmpty) {
      commands += new Command("u", "[u] Undo previous move", input => {
        pairing.undoMove(pairing.moves.head)
        State.maxMoveFilter = noFilter
      }, hidden = true)
    }
    if (State.calculateScore) {
      commands += new Command("c", "[c] Turn off score calculation", input => {
        State.calculateScore = false
      }, hidden = true)
      if (State.deepCalculations) {
        commands += new Command("cc", "[cc] Turn off score continuations", input => {
          State.deepCalculations = false
        }, hidden = true)
      } else {
        commands += new Command("cc", "[cc] Turn on score continuations", input => {
          State.deepCalculations = true
        }, hidden = true)
      }
    } else {
      commands += new Command("c", "[c] Turn on score calculation", input => {
        State.calculateScore = true
      }, hidden = true)
    }
    commands.toList
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

  def createMakeMoveCommand(index: Int, move: Move, scoreOption: Option[Score] = None) = {
    val action: String => Unit = { input: String =>
      Console.println("Performing move [" + index + "] " + pairing.describe(move))
      pairing.makeMove(move)
      State.maxMoveFilter = noFilter

      if (pairing.moves.nonEmpty && pairing.moves.size % 6 == 0) {
        printMatchups()
      }
    }

    val description = scoreOption match {
      case Some(score) => "[" + index + "] " + move.choice + ", score: " + score
      case None => "[" + index + "] " + move.choice
    }

    val continuationDescription =
      if (State.deepCalculations && move.maximizing) {

        val continuationEvaluations: List[Evaluation] = calculateContinuation(move)
        "\t\tContinuation:\t" + mkString(pairing, continuationEvaluations)

      } else {
        ""
      }


    new Command(index.toString, description + continuationDescription, action)
  }

  def mkString(pairing: Pairing, evaluations: List[Evaluation]) = {
    val move = evaluations.head.move
    pairing.getTeam(move) + " " + move.choiceDescription + "\t[" + evaluations.map(e => e.move.choice + ":" + e.score).mkString(",\t") + "]"
  }

  class Command(val inputRegex: String, val description: String, val action: String => Unit, val hidden: Boolean = false)

}

