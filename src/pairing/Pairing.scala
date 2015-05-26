package pairing

import scala.collection.mutable
object Pairing {
  def printMovesToConsole(moves: List[Move]): Unit = {
    for ((move,i) <- moves.zipWithIndex) {
      Console.println("[" + (i+1) + "] " + move)
    }
  }

  def runInteractivePairing(pairing: Pairing) {

    while (true) {
      val possibleMoves: List[Move] = pairing.nextMoves()

      if (pairing.moves.nonEmpty && pairing.moves.size % 6 == 0) {
        Console.println("#Matchups#")
        var accumulatedScore = 0
        for (((matchup,scenario),i) <- pairing.gameState.chosenMatchups.reverse.zipWithIndex) {
          val matchupScore: Int = pairing.gameState.scoreMatchup(matchup.maxArmy, matchup.minArmy, scenario)
          accumulatedScore += matchupScore
          Console.println(matchup.maxArmy + " vs " + matchup.minArmy + " " + scenario + " (" + matchupScore + ")")
        }
        Console.println("Score: " + accumulatedScore)
        Console.println("#Matchups#")
        Console.println()
      }

      Console.println("Possible moves:")
      if (pairing.moves.nonEmpty) {
        Console.println("[" + 0 + "] Undo previous move")
      }
      if (pairing.moves.size > 3) {
        pairing.evaluateMoves(depth = 6)
      } else {
        Pairing.printMovesToConsole(possibleMoves)
      }


      Console.println("Choose move: ")
      val choice: Int = Console.readInt()
      if (choice == 0) {
        pairing.undoMove(pairing.moves.head)
      } else {
        val move : Option[Move] = possibleMoves.lift(choice - 1)
        move match {
          case None => Console.println("Choice " + choice + " does not exist. Try again.")
          case Some(chosenMove) => {
            Console.println("Performing move [" + choice + "] " + chosenMove)
            pairing.makeMove(chosenMove)
          }
        }
      }
      Console.println()
      Console.println("#######################")
      Console.println()
    }
  }

  def combinations(armies: Iterable[Army]) : Iterable[(Army,Army)] = {
    for (a1 <- armies; a2 <- armies if a1.name < a2.name) yield (a1,a2)
  }
}
class Pairing(val scenarioOrder: List[Scenario], matchupEvaluations: MatchupEvalauations) {

  val gameState: GameState = new GameState(scenarioOrder, matchupEvaluations)

  val maxTeam = matchupEvaluations.maxTeam
  val minTeam = matchupEvaluations.minTeam

  var moves : mutable.Stack[Move] = new mutable.Stack[Move]()

  def startingMoves(): List[Move] = {
    maxTeam.armies.map { a:Army => new PutUpMax(a) }.toList
  }

  def nextMoves(): List[Move] = moves.headOption match {
    case None => startingMoves()
    case Some(move) => move.nextMoves(gameState)
  }


  def evaluateMoves(premoves: List[Move] = Nil, depth: Int = Int.MaxValue): Unit = {
    val movesToExcludeFromPrint : List[Move] = moves.toList ::: premoves
    premoves.map { move =>
      makeMove(move)
    }
    for ((move,i) <- nextMoves().zipWithIndex) {
      makeMove(move)
      var score = alphaBeta(move, depth, Score.MINIMUM_SCORE, Score.MAXIMUM_SCORE, !move.maximizing)
      undoMove(move)
      println("[" + (i+1) + "] " + move.getDescription(gameState) + ", score: " + score + " " + score.getMinMovesDescription(move :: movesToExcludeFromPrint))
    }
  }

  def makeMove(move: Move) {
    moves.push(move)
    move.makeMove(gameState)
  }

  def undoMove(move: Move) {
    moves.pop()
    move.undoMove(gameState)
  }

  def alphaBeta(move: Move, depth: Int, alphaInput: Score, betaInput: Score, maximizingPlayer: Boolean) : Score = {
    if (move.nextMoves(gameState).isEmpty) {
      return move.score(gameState, moves.toList.reverse)
    }
    if (false && depth <= 0 && move.isInstanceOf[ChooseCounterMin]) {
      // TODO fix, does not work => leads to ~40 points for entire first round
      return move.asInstanceOf[ChooseCounterMin].staticValue(gameState, moves.toList.reverse)
    }
    var alpha = alphaInput
    var beta = betaInput

    if (maximizingPlayer) {
      var v : Score = Score.MINIMUM_SCORE
      for (child: Move <- move.nextMoves(gameState)) {
        makeMove(child)
        v = Score.max(v, alphaBeta(child, depth - 1, alpha, beta, false))
        undoMove(child)
        alpha = Score.max(alpha, v)
        if (beta.compare(alpha) <= 0) {
          return v
        }
      }
      return v
    } else {
      var v : Score = Score.MAXIMUM_SCORE
      for (child: Move <- move.nextMoves(gameState)) {
        makeMove(child)
        v = Score.min(v, alphaBeta(child, depth - 1, alpha, beta, true))
        undoMove(child)
        beta = Score.min(beta, v)
        if (beta.compare(alpha) <= 0) {
          return v
        }
      }
      return v
    }
  }

}

class Army(val name: String) extends Ordered[Army] {
  override def equals(other: Any) = other match {
    case that:Army => that.name.equals(name)
    case _ => false
  }

  override def hashCode = name.hashCode

  override def compare(army: Army): Int = {
    name.compareTo(army.name)
  }

  override def toString = name
}

class Team(val name:String, val armies: List[Army], val scoreArray: Array[Array[Int]]) {
  override def toString = name
}

