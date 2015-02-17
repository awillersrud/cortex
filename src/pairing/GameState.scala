package pairing

import scala.collection.mutable
import org.junit.Assert._
import org.hamcrest.CoreMatchers._

class GameState(scenarioOrder: List[Scenario], matchupEvaluations: MatchupEvalauations) {

  val maxTeam = matchupEvaluations.maxTeam
  val minTeam = matchupEvaluations.minTeam

  def armiesPreRound = numberOfArmies - round * 2 + 2

  var round : Int = 0

  def isLastRound: Boolean = {
    val expectedMatchupsDecidedByEndOfThisRound = round * 2 + 2
    if (expectedMatchupsDecidedByEndOfThisRound > numberOfArmies) {
      throw new IllegalStateException("Round number is too high: " + round)
    }
    expectedMatchupsDecidedByEndOfThisRound == numberOfArmies
  }

  var chosenMatchups : mutable.Stack[Pair[Army, Army]] = new mutable.Stack()

  var maxArmyPutUp : Option[Army] = None
  var minArmyPutUp : Option[Army] = None
  var maxArmyCounters : Option[Pair[Army, Army]] = None
  var minArmyCounters : Option[Pair[Army, Army]] = None
  var maxArmiesInHand : mutable.MutableList[Army] = mutable.MutableList(maxTeam.armies.toSeq: _*).sorted
  var minArmiesInHand : mutable.MutableList[Army] = mutable.MutableList(minTeam.armies.toSeq: _*).sorted

  def addMaxArmyToHand(army: Army) {
    if (maxArmiesInHand.contains(army)) {
      throw new IllegalArgumentException("Army already in hand: " + army)
    } else if (!maxTeam.armies.contains(army)) {
      throw new IllegalArgumentException("Army is not a max team army: " + army)
    } else {
      maxArmiesInHand += army
      maxArmiesInHand = maxArmiesInHand.sorted
    }
  }

  def addMinArmyToHand(army: Army) {
    if (minArmiesInHand.contains(army)) {
      throw new IllegalArgumentException("Army already in hand: " + army)
    } else if (!minTeam.armies.contains(army)) {
      throw new IllegalArgumentException("Army is not a min team army: " + army)
    } else {
      minArmiesInHand += army
      minArmiesInHand = minArmiesInHand.sorted
    }
  }

  def removeMaxArmyFromHand(army: Army) {
    if (!maxArmiesInHand.contains(army)) {
      throw new IllegalArgumentException("Army not in hand: " + army)
    } else if (!maxTeam.armies.contains(army)) {
      throw new IllegalArgumentException("Army is not a max team army: " + army)
    } else {
      maxArmiesInHand = maxArmiesInHand.filterNot(_ == army)
    }
  }

  def removeMinArmyFromHand(army: Army) {
    if (!minArmiesInHand.contains(army)) {
      throw new IllegalArgumentException("Army not in hand: " + army)
    } else if (!minTeam.armies.contains(army)) {
      throw new IllegalArgumentException("Army is not a min team army: " + army)
    } else {
      minArmiesInHand = minArmiesInHand.filterNot(_ == army)
    }
  }

  def addMatchup(matchup: Pair[Army, Army]): Unit = {
    if (maxArmiesInHand.contains(matchup._1)) {
      throw new IllegalStateException("Attempt to add matchup with max army in hand: " + matchup._1)
    }
    if (minArmiesInHand.contains(matchup._2)) {
      throw new IllegalStateException("Attempt to add matchup with min army in hand: " + matchup._2)
    }
    if (!maxTeam.armies.contains(matchup._1)) {
      throw new IllegalArgumentException("First army in matchup is not max army: " + matchup._1)
    } else if (!minTeam.armies.contains(matchup._2)) {
      throw new IllegalArgumentException("Second army in matchup is not min army: " + matchup._2)
    }
    chosenMatchups.push(matchup)
  }

  def removeMatchup(): Pair[Army, Army] = {
    chosenMatchups.pop()
  }

  def scoreChosenMatchups(minMoves: List[Move]) : Score = {
    var score : Int = 0
    for ((matchup, i) <- chosenMatchups.zipWithIndex) {
      score += scoreMatchupWithScenario(matchup._1, matchup._2, scenarioOrder(i))
    }
    new Score(score, score, 1, minMoves)
  }

  def scoreMatchup(maxArmy: Army, minArmy: Army) : Int = {
    matchupEvaluations.scoreMatchup(new Matchup(maxArmy, minArmy), scenarioOrder(chosenMatchups.size))
  }

  def scoreMatchupWithScenario(maxArmy: Army, minArmy: Army, scenario: Scenario) : Int = {
    matchupEvaluations.scoreMatchup(new Matchup(maxArmy, minArmy), scenario)
  }

  val numberOfArmies : Int = maxTeam.armies.size

  def verifyNumberOfArmies() {
    val maxArmies = maxArmiesInHand.size + chosenMatchups.size + (if (maxArmyCounters.isEmpty) 0 else 2) + maxArmyPutUp.size
    if (maxArmies != numberOfArmies)
      assertThat("Unexpected number of max armies", maxArmies, equalTo(numberOfArmies))
    val minArmies = minArmiesInHand.size + chosenMatchups.size + (if (minArmyCounters.isEmpty) 0 else 2) + minArmyPutUp.size
    if (minArmies != numberOfArmies)
      assertThat("Unexpected number of min armies", minArmies, equalTo(numberOfArmies))
  }

}
