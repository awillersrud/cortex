package cortex

import cortex.MatchupEvaluations.EvaluationArray

import scala.collection.mutable

object MatchupEvaluations {
  type EvaluationArray = mutable.Map[Matchup, Int]
  type ScoreArray = Array[Array[Int]]

  def fromScoreArray(maxTeam: Team, minTeam: Team, scoreArray: ScoreArray): MatchupEvaluations = {
    if (minTeam.max) {
      throw new IllegalArgumentException("Min team has max=true")
    }
    if (!maxTeam.max) {
      throw new IllegalArgumentException("Max team has max=false")
    }
    val evaluations: MatchupEvaluations = new MatchupEvaluations(maxTeam, minTeam)
    for ((maxFaction, maxFactionIndex) <- maxTeam.factions.zipWithIndex) {
      for ((minFaction, minFactionIndex) <- minTeam.factions.zipWithIndex) {
        val matchup: Matchup = new Matchup(maxFaction, minFaction)
        val score: Int = scoreArray(maxFactionIndex)(minFactionIndex)
        evaluations.addEvaluation(matchup, score)
      }
    }
    evaluations.validate()
    evaluations
  }
}

class MatchupEvaluations(val maxTeam:Team, val minTeam:Team) {
  def inverse(): MatchupEvaluations = {
    val inverse: MatchupEvaluations = new MatchupEvaluations(new Team(minTeam.name, true, minTeam.factions),
      new Team(maxTeam.name, false, maxTeam.factions))

    def inverseEvalArray(evaluationArray: EvaluationArray, scoreFunction: Int => Int): EvaluationArray = {
      evaluationArray.map(matchupAndScore => Tuple2(new Matchup(matchupAndScore._1.minFaction, matchupAndScore._1.maxFaction), scoreFunction(matchupAndScore._2)))
    }
    inverse.scoreArray = inverseEvalArray(scoreArray, { score => 100 - score })

    inverse
  }


  var scoreArray:mutable.Map[Matchup, Int] = new mutable.HashMap[Matchup, Int]()

  def addEvaluation(matchup:Matchup, score: Int): Unit = {
    scoreArray.put(matchup, score)
  }

  def validate(): Unit = {
      for (maxFaction <- maxTeam.factions) {
        for (minFaction <- minTeam.factions) {
          val matchup: Matchup = new Matchup(maxFaction, minFaction)
          val score: Int = scoreMatchup(matchup)
          //println(matchup.maxArmy + " vs " + matchup.minArmy + " in " + scenario + "(" + score + ")")
        }
      }
  }

  def scoreMatchup(matchup: Matchup): Int = {
    scoreArray.get(matchup) match {
      case None => throw new IllegalStateException("Missing evaluation for matchup: " + matchup)
      case Some(score: Int) => score
    }
  }

}

case class Matchup(maxFaction:Faction, minFaction: Faction) {

  override def equals(other: Any): Boolean = other match {
    case that:Matchup => maxFaction.equals(that.maxFaction) && minFaction.equals(that.minFaction)
    case a:Any => false
  }

  override def hashCode = (maxFaction :: minFaction :: Nil).hashCode()
}




