package pairing

import org.hamcrest.CoreMatchers._
import org.junit.Assert._

import scala.collection.mutable

class GameState(matchupEvaluations: MatchupEvaluations) {

  val maxTeam = matchupEvaluations.maxTeam
  val minTeam = matchupEvaluations.minTeam

  def factionsPreRound = numberOfFactions - round + 1

  var round : Int = 0

  def isLastRound: Boolean = {
    val expectedMatchupsDecidedByEndOfThisRound = round + 1
    if (expectedMatchupsDecidedByEndOfThisRound > numberOfFactions) {
      throw new IllegalStateException("Round number is too high: " + round)
    }
    expectedMatchupsDecidedByEndOfThisRound == numberOfFactions
  }

  var chosenMatchups : mutable.Stack[Matchup] = new mutable.Stack()

  def team(max: Boolean): Team = if (max) maxTeam else minTeam

  var maxFactionPutUp : Option[Faction] = None
  var minFactionPutUp : Option[Faction] = None
  var maxFactionCounters : Option[(Faction, Faction)] = None
  var minFactionCounters : Option[(Faction, Faction)] = None
  var maxFactionsInHand : mutable.MutableList[Faction] = mutable.MutableList(maxTeam.factions.toSeq: _*).sorted
  var minFactionsInHand : mutable.MutableList[Faction] = mutable.MutableList(minTeam.factions.toSeq: _*).sorted

  def factionsInHand(max: Boolean) : mutable.MutableList[Faction] = if (max) maxFactionsInHand else minFactionsInHand

  def setCounters(counters: Option[(Faction, Faction)], max: Boolean): Unit = {
    if (max) {
      maxFactionCounters = counters
    } else {
      minFactionCounters = counters
    }
  }

  def getCounters(max: Boolean) : Option[(Faction, Faction)] = if (max) maxFactionCounters else minFactionCounters

  def setPutUp(faction: Option[Faction], max: Boolean): Unit = {
    if (max) {
      maxFactionPutUp = faction
    } else {
      minFactionPutUp = faction
    }
  }

  def getPutUp(max: Boolean): Option[Faction] = if (max) maxFactionPutUp else minFactionPutUp

  def addFactionToHand(faction: Faction, max: Boolean) {
    if (factionsInHand(max).contains(faction)) {
      throw new IllegalArgumentException("Faction already in hand: " + faction)
    } else if (!team(max).factions.contains(faction)) {
      throw new IllegalArgumentException("Faction is not in correct team(" + team(max) +"): " + faction)
    } else if (max) {
      maxFactionsInHand += faction
      maxFactionsInHand = maxFactionsInHand.sorted
    } else {
      minFactionsInHand += faction
      minFactionsInHand = minFactionsInHand.sorted
    }
  }

  def removeFactionFromHand(faction: Faction, max: Boolean) {
    if (!factionsInHand(max).contains(faction)) {
      throw new IllegalArgumentException("Faction not in hand: " + faction)
    } else if (!team(max).factions.contains(faction)) {
      throw new IllegalArgumentException("Faction is not in correct team(" + team(max) +"): " + faction)
    } else if (max) {
      maxFactionsInHand = maxFactionsInHand.filterNot(_ == faction)
    } else {
      minFactionsInHand = minFactionsInHand.filterNot(_ == faction)
    }
  }

  def addMatchup(matchup: Matchup): Unit = {
    if (maxFactionsInHand.contains(matchup.maxFaction)) {
      throw new IllegalStateException("Attempt to add matchup with max faction in hand: " + matchup.maxFaction)
    }
    if (minFactionsInHand.contains(matchup.minFaction)) {
      throw new IllegalStateException("Attempt to add matchup with min faction in hand: " + matchup.minFaction)
    }
    if (!maxTeam.factions.contains(matchup.maxFaction)) {
      throw new IllegalArgumentException("First faction in matchup is not max faction: " + matchup.maxFaction)
    } else if (!minTeam.factions.contains(matchup.minFaction)) {
      throw new IllegalArgumentException("Second faction in matchup is not min faction: " + matchup.minFaction)
    }
    chosenMatchups.push(new Matchup(matchup.maxFaction, matchup.minFaction))
  }

  def removeMatchup(): Matchup = {
    chosenMatchups.pop()
  }

  def scoreChosenMatchups(minMoves: List[Move]) : Score = {
    var score : Int = 0
    for ((matchup, i) <- chosenMatchups.zipWithIndex) {
      score += scoreMatchup(matchup.maxFaction, matchup.minFaction)
    }
    new Score(score, score, 1, minMoves)
  }

  def scoreMatchup(maxFaction: Faction, minFaction: Faction) : Int = {
    matchupEvaluations.scoreMatchup(new Matchup(maxFaction, minFaction))
  }

  val numberOfFactions : Int = maxTeam.factions.size

  def verifyNumberOfFactions() {
    val maxFactions = maxFactionsInHand.size + chosenMatchups.size + (if (maxFactionCounters.isEmpty) 0 else 2) + maxFactionPutUp.size
    if (maxFactions != numberOfFactions)
      assertThat("Unexpected number of max factions", maxFactions, equalTo(numberOfFactions))
    val minFactions = minFactionsInHand.size + chosenMatchups.size + (if (minFactionCounters.isEmpty) 0 else 2) + minFactionPutUp.size
    if (minFactions != numberOfFactions)
      assertThat("Unexpected number of min factions", minFactions, equalTo(numberOfFactions))
  }

  def aggregateRemainingPossibleMatchups: Score = {
    val chosenMaxFactions = chosenMatchups.map(m => m.maxFaction)
    val chosenMinFactions = chosenMatchups.map(m => m.minFaction)
    val remainingMaxFactions = maxTeam.factions.filterNot(chosenMaxFactions.contains(_))
    val remainingMinFaction = minTeam.factions.filterNot(chosenMinFactions.contains(_))

    val matchups : List[Matchup] = for (maxFaction <- remainingMaxFactions; minFaction <- remainingMinFaction)
      yield new Matchup(maxFaction, minFaction)

    val totalValue: Int = matchups.foldLeft(0)((acc:Int,m:Matchup) => acc + scoreMatchup(m.maxFaction, m.minFaction))
    new Score(0, totalValue, matchups.size, Nil)
  }

  def printGameState() : Unit = {
    printMatchups()

    val headers = "Team" :: "Hand" :: "Put Up" :: "Counters" :: Nil
    val maxValues = maxTeam.name :: maxFactionsInHand.mkString(",") :: maxFactionPutUp.getOrElse(None) :: maxFactionCounters.getOrElse(None) :: Nil
    val minValues = minTeam.name :: minFactionsInHand.mkString(",") :: minFactionPutUp.getOrElse(None) :: minFactionCounters.getOrElse(None) :: Nil

    println(util.Tabulator.format(List(headers, maxValues, minValues)))
  }

  def printMatchups(): Unit = {
    if (chosenMatchups.isEmpty)
      return

    var accumulatedScore = 0
    val matchupRows: List[List[String]] = (for ((matchup:Matchup, index) <- chosenMatchups.reverse.zipWithIndex)
    yield {
      val matchupScore: Int = scoreMatchup(matchup.maxFaction, matchup.minFaction)
      accumulatedScore += matchupScore
      matchup.maxFaction.toString :: matchup.minFaction.toString :: matchupScore.toString :: Nil
    }).toList

    Console.println("#Matchups# (score: " + accumulatedScore + ")")
    val headers : List[String] = maxTeam.toString :: minTeam.toString :: "Score" :: Nil

    println(util.Tabulator.format(headers :: matchupRows))
  }

}
