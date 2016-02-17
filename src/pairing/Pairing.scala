package pairing

import java.util.concurrent.TimeUnit

import scala.collection.mutable
import scala.concurrent.duration.Duration

object Pairing {
  def combinations(armies: Iterable[Army]): Iterable[(Army, Army)] = {
    for (a1 <- armies; a2 <- armies if a1.name < a2.name) yield (a1, a2)
  }

  def convertToInverseMoves(moves:List[Move]) : List[Move] = moves match {
    case (m1:PutUpMax) :: (m2:PutUpMin) :: xs =>
      new PutUpMax(m2.army) :: new PutUpMin(m1.army) :: convertToInverseMoves(xs)
    case (m1:CounterMax) :: (m2:CounterMin) :: xs =>
      new CounterMax(m2.counters) :: new CounterMin(m1.counters) :: convertToInverseMoves(xs)
    case (m1:ChooseCounterMax) :: (m2:ChooseCounterMin) :: xs =>
      new ChooseCounterMax(m2.chosenMaxArmy, m2.nonChosenMaxArmy) :: new ChooseCounterMin(m1.chosenMinArmy, m1.nonChosenMinArmy) :: convertToInverseMoves(xs)
    case _ => Nil
  }
}

class Pairing(val scenarioOrder: List[Scenario], val matchupEvaluations: MatchupEvaluations) {

  def inverse(): Pairing = {
    val inverse: Pairing = new Pairing(scenarioOrder, matchupEvaluations.inverse())

    Pairing.convertToInverseMoves(moves.toList.reverse).foreach(move => inverse.makeMove(move))

    inverse
  }

  def remainingMoves = {
    val requiredRounds : Int = (gameState.numberOfArmies - 2) / 2
    val requiredMoves = requiredRounds * 6
    requiredMoves - moves.size
  }


  val gameState: GameState = new GameState(scenarioOrder, matchupEvaluations)

  val calculatedMoves = mutable.Set[Evaluation]()

  val maxTeam = matchupEvaluations.maxTeam
  val minTeam = matchupEvaluations.minTeam

  var moves: mutable.Stack[Move] = new mutable.Stack[Move]()

  def startingMoves(): List[Move] = {
    maxTeam.armies.map { a: Army => new PutUpMax(a) }.toList
  }

  def nextMoves(): List[Move] = moves.headOption match {
    case None => startingMoves()
    case Some(move) => move.nextMoves(gameState)
  }

  def evaluateMoves(verbose: Boolean = false): List[Evaluation] = {
    val start: Long = System.currentTimeMillis()
    if (verbose)
      println("Evaluating moves")

    val evaluations: List[Evaluation] = nextMoves() map { move => evaluateMove(move) }
    if (verbose)
      println("Done evaluating moves - " + Duration(System.currentTimeMillis() - start, TimeUnit.MILLISECONDS).toString())
    evaluations
  }

  def evaluateMove(move: Move): Evaluation = {
    val previousMoves: List[Move] = moves.toList
    val score = if (calculatedMoves.contains(new Evaluation(previousMoves, move))) {
      calculatedMoves.find(_.equals(new Evaluation(previousMoves, move))).get.score
    } else {
      makeMove(move)
      val newScore = alphaBeta(move, Score.MINIMUM_SCORE, Score.MAXIMUM_SCORE, !move.maximizing, 0)
      calculatedMoves.add(new Evaluation(previousMoves, move, newScore))
      undoMove(move)
      newScore
    }
    new Evaluation(previousMoves, move, score)
  }

  def getTeam(move: Move): Team = {
    if (move.maximizing) maxTeam else minTeam
  }

  def describe(move: Move): String = {
    getTeam(move) + " " + move.toString
  }

  def makeMoves(moves: List[Move]) = {
    moves.foreach { move =>
      makeMove(move)
    }
    this
  }

  def makeMove(move: Move) = {
    moves.push(move)
    move.makeMove(gameState)
    this
  }

  def undoMove(move: Move) = {
    moves.pop()
    move.undoMove(gameState)
    this
  }

  def alphaBeta(move: Move, alphaInput: Score, betaInput: Score, maximizingPlayer: Boolean, depth: Int = 0): Score = {
    if (move.nextMoves(gameState).isEmpty) {
      return move.score(gameState, moves.toList.reverse)
    }
    if (false && depth >= 0 && move.isInstanceOf[ChooseCounterMin]) {
      // TODO fix, does not work => leads to ~40 points for entire first round
      return move.asInstanceOf[ChooseCounterMin].staticValue(gameState, moves.toList.reverse)
    }
    var alpha = alphaInput
    var beta = betaInput

    if (maximizingPlayer) {
      var v: Score = Score.MINIMUM_SCORE
      for (child: Move <- move.nextMoves(gameState)) {
        makeMove(child)
        v = Score.max(v, alphaBeta(child, alpha, beta, maximizingPlayer = false, depth + 1))
        undoMove(child)
        alpha = Score.max(alpha, v)
        if (beta.compare(alpha) <= 0) {
          return v
        }
      }
      return v
    } else {
      var v: Score = Score.MAXIMUM_SCORE
      val childScores = new mutable.MutableList[(Move, Score)]()
      for (child: Move <- move.nextMoves(gameState)) {
        makeMove(child)
        val childScore: Score = alphaBeta(child, alpha, beta, maximizingPlayer = true, depth + 1)
        childScores += Pair(child, childScore)
        v = Score.min(v, childScore)
        undoMove(child)
        beta = Score.min(beta, v)
        if (depth > 0 && beta.compare(alpha) <= 0) {
          return v
        }
      }
      if (depth == 0) {
        new Score(v.minScore, v.minScore, 1, v.moves, childScores.toList)
      } else {
        v
      }
    }
  }

}

class Army(val name: String) extends Ordered[Army] {
  override def equals(other: Any) = other match {
    case that: Army => that.name.equals(name)
    case _ => false
  }

  override def hashCode = name.hashCode

  override def compare(army: Army): Int = {
    name.compareTo(army.name)
  }

  override def toString = name
}

class Team(val name: String, val armies: List[Army], val scoreArray: Array[Array[Int]]) {
  override def toString = name
}

class Evaluation(val previousMoves: List[Move], val move: Move, val score: Score = null) {
  override def toString = move + ":" + score

  override def hashCode(): Int = {
    val state = Seq(previousMoves, move)
    state.map(_.hashCode()).foldLeft(0)((a, b) => 31 * a + b)
  }

  def canEqual(other: Any): Boolean = other.isInstanceOf[Evaluation]

  override def equals(other: Any): Boolean = other match {
    case that: Evaluation =>
      (that canEqual this) &&
        previousMoves.equals(that.previousMoves) &&
        move.equals(that.move)
    case _ => false
  }
}


