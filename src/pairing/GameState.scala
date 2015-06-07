package pairing

import scala.collection.mutable
import org.junit.Assert._
import org.hamcrest.CoreMatchers._

class GameState(val scenarioOrder: List[Scenario], matchupEvaluations: MatchupEvaluations) {

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

  var chosenMatchups : mutable.Stack[(Matchup, Scenario)] = new mutable.Stack()

  var maxArmyPutUp : Option[Army] = None
  var minArmyPutUp : Option[Army] = None
  var maxArmyCounters : Option[(Army, Army)] = None
  var minArmyCounters : Option[(Army, Army)] = None
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

  def nextScenario : Scenario = scenarioOrder(this.round - 1)
  def lastScenario : Scenario = scenarioOrder.last

  def addMatchup(matchup: Matchup, scenario: Scenario): Unit = {
    if (maxArmiesInHand.contains(matchup.maxArmy)) {
      throw new IllegalStateException("Attempt to add matchup with max army in hand: " + matchup.maxArmy)
    }
    if (minArmiesInHand.contains(matchup.minArmy)) {
      throw new IllegalStateException("Attempt to add matchup with min army in hand: " + matchup.minArmy)
    }
    if (!maxTeam.armies.contains(matchup.maxArmy)) {
      throw new IllegalArgumentException("First army in matchup is not max army: " + matchup.maxArmy)
    } else if (!minTeam.armies.contains(matchup.minArmy)) {
      throw new IllegalArgumentException("Second army in matchup is not min army: " + matchup.minArmy)
    }
    chosenMatchups.push((new Matchup(matchup.maxArmy, matchup.minArmy), scenario))
  }

  def removeMatchup(): Matchup = {
    chosenMatchups.pop()._1
  }

  def scoreChosenMatchups(minMoves: List[Move]) : Score = {
    var score : Int = 0
    for (((matchup,scenario), i) <- chosenMatchups.zipWithIndex) {
      score += scoreMatchup(matchup.maxArmy, matchup.minArmy, scenario)
    }
    new Score(score, score, 1, minMoves)
  }

  def scoreMatchup(maxArmy: Army, minArmy: Army, scenario: Scenario) : Int = {
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

  def aggregateRemainingPossibleMatchups: Score = {
    val chosenMaxArmies = chosenMatchups.map(m => m._1.maxArmy)
    val chosenMinArmies = chosenMatchups.map(m => m._1.minArmy)
    val remainingMaxArmies = maxTeam.armies.filterNot(chosenMaxArmies.contains(_))
    val remainingMinArmies = minTeam.armies.filterNot(chosenMinArmies.contains(_))

    val matchups : List[Matchup] = for (maxArmy <- remainingMaxArmies; minArmy <- remainingMinArmies)
      yield new Matchup(maxArmy, minArmy)

    val totalValue: Int = matchups.foldLeft(0)((acc:Int,m:Matchup) => acc + scoreMatchup(m.maxArmy, m.minArmy, Scenario.BATTLELINE))
    new Score(0, totalValue, matchups.size, Nil)
  }

}
