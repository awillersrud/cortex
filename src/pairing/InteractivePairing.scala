package pairing

import java.io.File

import scala.collection.mutable
import scala.io.StdIn

class InteractivePairing(pairing: Pairing) {

  def printMovesToConsole(moves: List[Move]): Unit = {
    for ((move, i) <- moves.zipWithIndex) {
      Console.println("[" + (i + 1) + "] " + pairing.describe(move))
    }
  }

  object State {
    var maxNumberOfContinuations: Int = 4

    var skipPrintNextCommands = false
  }

  def run() {

    pairing.matchupEvaluations.print()

    while (true) {

      val nextMoves: List[Move] = pairing.nextMoves()
      if (nextMoves == Nil) {
        pairing.gameState.printMatchups()
      } else {
        pairing.gameState.printGameState()
      }

      val commands: List[Command] = createNextCommands(nextMoves)

      if (State.skipPrintNextCommands) {
        State.skipPrintNextCommands = false
      } else {
        if (nextMoves != Nil) {
          val nextMove: Move = nextMoves.head
//          println("Round: " + pairing.gameState.round)

          println(pairing.getTeam(nextMove) + " " + nextMove.choiceDescription + ":")
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

    if (pairing.moves.nonEmpty && pairing.moves.head.maximizing) {
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
    if (pairing.moves.isEmpty) {
      val startingTeam = if (pairing.maxTeamStarts) pairing.maxTeam else pairing.minTeam
      commands += new Command("t", "[t] Toggle starting team (currently " + startingTeam.name + ")", input => {
        pairing.maxTeamStarts = !pairing.maxTeamStarts
      }, hidden = false)
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
      "[" + index + "] " + move.choice + ", score: " + score
      ,
      { input: String =>
        Console.println("Performing move [" + index + "] " + pairing.describe(move))
        pairing.makeMove(move)
      },
      hidden = false) {

    override def print(): Unit = {
      Console.println(description)

      if (minScore.minScore == score.minScore && continuationEvaluations.nonEmpty)
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


}

