package pairing

import org.hamcrest.CoreMatchers.equalTo
import org.junit.Assert._
import org.junit._
import pairing.TestData._

import scala.collection.mutable

class MatchupEvaluationsTest {

  @Test
  def testValidPairing(): Unit = {
    val pairing: Pairing = Treningskamper.lagkamp5
    val eval = pairing.matchupEvaluations
    eval.validate()
  }

  @Test
  def testValidEvaluations(): Unit = {
    val eval = new MatchupEvaluations(bskTeam, stefleifs)
    for (maxArmy <- bskTeam.armies) {
      for (minArmy <- stefleifs.armies) {
        val matchup: Matchup = new Matchup(maxArmy, minArmy)
        eval.addEvaluation(matchup, 10)
        eval.addScenarioEvaluation(Scenario.BLOOD_AND_GLORY, matchup, 1)
        eval.addScenarioEvaluation(Scenario.KING_OF_THE_HILL, matchup, 2)
        eval.addScenarioEvaluation(Scenario.MEETING_ENGAGEMENT, matchup, 3)
      }
    }
    eval.validate()
    val matchup: Matchup = new Matchup(bskTeam.armies.head, stefleifs.armies.head)
    assertThat(eval.scoreMatchup(matchup, Scenario.BATTLELINE), equalTo(10))
    assertThat(eval.scoreMatchup(matchup, Scenario.BLOOD_AND_GLORY), equalTo(11))
    assertThat(eval.scoreMatchup(matchup, Scenario.KING_OF_THE_HILL), equalTo(12))
    assertThat(eval.scoreMatchup(matchup, Scenario.MEETING_ENGAGEMENT), equalTo(13))
  }

  @Test
  def testBuildFromScoreArray(): Unit = {
    val evalauations: MatchupEvaluations = MatchupEvaluations.fromScoreArray(bskTeam, stefleifs, scoreArraystefleifs)
    evalauations.validate()

  }

  @Test
  def testMatchupEquality(): Unit = {
    val matchup: Matchup = new Matchup(new Army("a1"), new Army("b1"))
    val matchup2: Matchup = new Matchup(new Army("a1"), new Army("b1"))
    assertEquals(matchup, matchup2)
  }

  @Test
  def testMapContainsMatchup(): Unit = {
    val matchup: Matchup = new Matchup(new Army("a1"), new Army("b1"))
    val matchup2: Matchup = new Matchup(new Army("a1"), new Army("b1"))
    val map: mutable.HashMap[Matchup, Int] = new mutable.HashMap[Matchup, Int]()
    map.put(matchup, 10)
    assertEquals(10, map.get(matchup2).get)
  }

}
