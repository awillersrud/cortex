package cortex

import java.util.concurrent.TimeUnit

import cortex.MatchupEvaluations.ScoreArray
import cortex.moves._

import scala.collection.mutable
import scala.concurrent.duration.Duration

object Pairing {
  def combinations(factions: Iterable[Faction]): Iterable[(Faction, Faction)] = {
    for (f1 <- factions; f2 <- factions if f1.name < f2.name) yield (f1, f2)
  }
}

class Pairing(val matchupEvaluations: MatchupEvaluations) {

  def remainingMoves = {
    val requiredRounds : Int = (gameState.numberOfFactions - 2) / 2
    val requiredMoves = requiredRounds * 6
    requiredMoves - moves.size
  }


  val gameState: GameState = new GameState(matchupEvaluations)

  val calculatedMoves = mutable.Set[Evaluation]()

  val maxTeam = matchupEvaluations.maxTeam
  val minTeam = matchupEvaluations.minTeam

  var moves: mutable.Stack[Move] = new mutable.Stack[Move]()

  var maxTeamStarts: Boolean = true

  def startingMoves(): List[Move] = {
    if (maxTeamStarts)
      maxTeam.factions.map { a: Faction => new PutUp(a, maxTeam) }
    else
      minTeam.factions.map { a: Faction => new PutUp(a, minTeam) }
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
//    if (false && depth >= 0 && move.isInstanceOf[ChooseCounterMin]) {
//       TODO fix, does not work => leads to ~40 points for entire first round
//      return move.asInstanceOf[ChooseCounterMin].staticValue(gameState, moves.toList.reverse)
//    }
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

class Faction(val name: String) extends Ordered[Faction] {
  override def equals(other: Any) = other match {
    case that: Faction => that.name.equals(name)
    case _ => false
  }

  override def hashCode = name.hashCode

  override def compare(faction: Faction): Int = {
    name.compareTo(faction.name)
  }

  override def toString = name
}

class Team(val name: String, val max: Boolean, val factions: List[Faction]) {
  override def toString = name
}
object Team {
  def create(name: String, max: Boolean = true, player1: String, player2: String, player3: String, player4: String, player5: String) = {
    new Team(name, max, new Faction(player1) :: new Faction(player2) :: new Faction(player3) :: new Faction(player4) :: new Faction(player5) :: Nil)
  }
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


