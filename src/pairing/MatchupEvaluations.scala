package pairing

import pairing.MatchupEvaluations.EvaluationArray

import scala.collection.mutable

object MatchupEvaluations {
  type EvaluationArray = mutable.Map[Matchup, Int]
  type ScoreArray = Array[Array[Int]]

  def fromScoreArray(maxTeam:Team, minTeam:Team, scoreArray: ScoreArray) : MatchupEvaluations = {
    val evaluations: MatchupEvaluations = new MatchupEvaluations(maxTeam, minTeam)
    for ((maxArmy, maxArmyIndex) <- maxTeam.armies.zipWithIndex) {
      for ((minArmy, minArmyIndex) <- minTeam.armies.zipWithIndex) {
        val matchup: Matchup = new Matchup(maxArmy, minArmy)
        val score: Int = scoreArray(maxArmyIndex)(minArmyIndex)
        evaluations.addEvaluation(matchup, score)
        evaluations.addScenarioEvaluation(Scenario.BLOOD_AND_GLORY, matchup, 0)
        evaluations.addScenarioEvaluation(Scenario.KING_OF_THE_HILL, matchup, 0)
        evaluations.addScenarioEvaluation(Scenario.MEETING_ENGAGEMENT, matchup, 0)
      }
    }
    evaluations.validate()
    evaluations
  }

  def fromScoreArray(maxTeam:Team, minTeam:Team, battleline: ScoreArray, bloodAndGlory: ScoreArray, kingOfTheHill: ScoreArray, meetingEngagement: ScoreArray) : MatchupEvaluations = {
    val evaluations: MatchupEvaluations = new MatchupEvaluations(maxTeam, minTeam)
    for ((maxArmy, maxArmyIndex) <- maxTeam.armies.zipWithIndex) {
      for ((minArmy, minArmyIndex) <- minTeam.armies.zipWithIndex) {
        val matchup: Matchup = new Matchup(maxArmy, minArmy)
        evaluations.addEvaluation(matchup, battleline(maxArmyIndex)(minArmyIndex))
        evaluations.addScenarioEvaluation(Scenario.BLOOD_AND_GLORY, matchup, bloodAndGlory(maxArmyIndex)(minArmyIndex))
        evaluations.addScenarioEvaluation(Scenario.KING_OF_THE_HILL, matchup, kingOfTheHill(maxArmyIndex)(minArmyIndex))
        evaluations.addScenarioEvaluation(Scenario.MEETING_ENGAGEMENT, matchup, meetingEngagement(maxArmyIndex)(minArmyIndex))
      }
    }
    evaluations.validate()
    evaluations
  }
}

class MatchupEvaluations(val maxTeam:Team, val minTeam:Team) {
  def inverse(): MatchupEvaluations = {
    val inverse: MatchupEvaluations = new MatchupEvaluations(minTeam, maxTeam)

    def inverseEvalArray(evaluationArray: EvaluationArray, scoreFunction: Int => Int): EvaluationArray = {
      evaluationArray.map(matchupAndScore => Tuple2(new Matchup(matchupAndScore._1.minArmy, matchupAndScore._1.maxArmy), scoreFunction(matchupAndScore._2)))
    }
    inverse.battleLine = inverseEvalArray(battleLine, { score => 20 - score })
    inverse.scenarioEvaluations = scenarioEvaluations.map(scenarioAndEvalArray => Tuple2(scenarioAndEvalArray._1, inverseEvalArray(scenarioAndEvalArray._2, { score => -score })))

    inverse
  }


  var battleLine:mutable.Map[Matchup, Int] = new mutable.HashMap[Matchup, Int]()
  var scenarioEvaluations:mutable.Map[Scenario, EvaluationArray] = new mutable.HashMap[Scenario, EvaluationArray]()

  def addEvaluation(matchup:Matchup, score: Int): Unit = {
    battleLine.put(matchup, score)
  }

  def addScenarioEvaluation(scenario:Scenario, matchup:Matchup, relativeScore: Int): Unit = {
    if (scenarioEvaluations.get(scenario) == None) {
      scenarioEvaluations.put(scenario, new mutable.HashMap[Matchup, Int]())
    }
    scenarioEvaluations.get(scenario).get.put(matchup, relativeScore)
  }

  def validate(): Unit = {
    for (scenario <- Scenario.BATTLELINE :: Scenario.BLOOD_AND_GLORY :: Scenario.KING_OF_THE_HILL :: Scenario.MEETING_ENGAGEMENT :: Nil) {
      for (maxArmy <- maxTeam.armies) {
        for (minArmy <- minTeam.armies) {
          val matchup: Matchup = new Matchup(maxArmy, minArmy)
          val score: Int = scoreMatchup(matchup, scenario)
          //println(matchup.maxArmy + " vs " + matchup.minArmy + " in " + scenario + "(" + score + ")")
        }
      }
    }
  }

  def scoreMatchup(matchup: Matchup, scenario:Scenario): Int = {
    val battleLineScore = battleLine.get(matchup) match {
      case None => throw new IllegalStateException("Missing battleline evaluation for matchup: " + matchup)
      case Some(score:Int) => score
    }
    scenario match {
      case Scenario.BATTLELINE => battleLineScore
      case _ =>
        val scenarioEvals: EvaluationArray = scenarioEvaluations.get(scenario).get
        val scenarioScore = scenarioEvals.get(matchup) match {
          case None => throw new IllegalStateException("Missing scenario evaluation for matchup: " + matchup)
          case Some(score: Int) => score
        }
        scenarioScore + battleLineScore
    }
  }
}

case class Matchup(maxArmy:Army, minArmy: Army) {

  override def equals(other: Any): Boolean = other match {
    case that:Matchup => maxArmy.equals(that.maxArmy) && minArmy.equals(that.minArmy)
    case a:Any => false
  }

  override def hashCode = (maxArmy :: minArmy :: Nil).hashCode()
}




