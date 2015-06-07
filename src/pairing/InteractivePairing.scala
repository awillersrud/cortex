package pairing

import scala.collection.mutable
import scala.io.StdIn

class InteractivePairing(pairing: Pairing) {

  def printMovesToConsole(moves: List[Move]): Unit = {
    for ((move, i) <- moves.zipWithIndex) {
      Console.println("[" + (i + 1) + "] " + move)
    }
  }

  object State {
    var nextMoves: List[Move] = Nil
    var calculateScore = false
    var maxMoveFilter: List[Evaluation] => List[Evaluation] = noFilter
    var calculateScoreContinuations = false
    var skipPrintCommands = false
  }

  val noFilter: (List[Evaluation]) => List[Evaluation] = { ingoingList => ingoingList }

  def run() {

    State.nextMoves = pairing.nextMoves()

    while (true) {

      val commands: List[Command] = createNextCommands(State.nextMoves)

      if (State.skipPrintCommands) {
        State.skipPrintCommands = false
      } else {
        commands.filter(!_.hidden).foreach(c => println(c.description))
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

  def printMatchups(): Unit = {
    Console.println("#Matchups#")
    var accumulatedScore = 0
    for (((matchup, scenario), i) <- pairing.gameState.chosenMatchups.reverse.zipWithIndex) {
      val matchupScore: Int = pairing.gameState.scoreMatchup(matchup.maxArmy, matchup.minArmy, scenario)
      accumulatedScore += matchupScore
      Console.println(matchup.maxArmy + " vs " + matchup.minArmy + " " + scenario + " (" + matchupScore + ")")
    }
    Console.println("Score: " + accumulatedScore)
    Console.println("#Matchups#")
    Console.println()
  }

  def createNextCommands(moves: List[Move]): List[Command] = {
    val makeMoveCommands: List[Command] = if (State.calculateScore && pairing.moves.size > 1) {
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
      State.skipPrintCommands = true
    }, hidden = true)

    commands += new Command("f[1-9]*", "[f] Show only N best moves ", input => {
      val n = if (input.length > 1) input.drop(1).toInt else 6
      State.maxMoveFilter = { inputList: List[Evaluation] => inputList.take(n) }
    }, hidden = true)

    commands += new Command("m", "[m] Print matchups ", input => {
      printMatchups()
    }, hidden = true)

    commands += new Command("t", "[t] Print remaining matchup table", input => {
      println("TODO: REMAINING MATCHUP TABLE") // TODO
    }, hidden = true)

    if (pairing.remainingMoves <= 4) {
      commands += new Command("g", "[g] Print gambit egf file", input => {
        new EgfPrinter().printEgfMove(pairing)
      })
    }
    if (pairing.moves.nonEmpty) {
      commands += new Command("u", "[u] Undo previous move", input => {
        pairing.undoMove(pairing.moves.head)
        State.nextMoves = pairing.nextMoves()
      }, hidden = true)
    }
    if (State.calculateScore) {
      commands += new Command("c", "[c] Turn off score calculation", input => {
        State.calculateScore = false
      }, hidden = true)
      if (State.calculateScoreContinuations) {
        commands += new Command("cc", "[cc] Turn off score continuations", input => {
          State.calculateScoreContinuations = false
        }, hidden = true)
      } else {
        commands += new Command("cc", "[cc] Turn on score continuations", input => {
          State.calculateScoreContinuations = true
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
      Console.println("Performing move [" + index + "] " + move)
      pairing.makeMove(move)
      State.nextMoves = pairing.nextMoves()
      State.maxMoveFilter = noFilter

      if (pairing.moves.nonEmpty && pairing.moves.size % 6 == 0) {
        printMatchups()
      }
    }

    val description = scoreOption match {
      case Some(score) => "[" + index + "] " + move.toString + ", score: " + score
      case None => "[" + index + "] " + move.toString
    }

    val continuationDescription =
      if (State.calculateScoreContinuations && move.maximizing) {
        val continuationEvaluations: List[Evaluation] = calculateContinuation(move)
        val continutaionMoveDescription = continuationEvaluations.head.move.choiceDescription
        "\t Continuation - " + continutaionMoveDescription + "\t[" + sortMinimizing(continuationEvaluations).map(e => e.move.choice + ":" + e.score).mkString(",\t") + "]"
      } else {
        ""
      }


    new Command(index.toString, description + continuationDescription, action)
  }

  class Command(val inputRegex: String, val description: String, val action: String => Unit, val hidden: Boolean = false)

}

