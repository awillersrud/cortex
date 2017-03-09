package cortex

import org.hamcrest.CoreMatchers.equalTo
import org.junit.Assert._
import org.junit._
import cortex.TestPairings._

import scala.collection.mutable

class MatchupEvaluationsTest {

  @Test
  def testValidPairing(): Unit = {
    val pairing: Pairing = TestPairings.norwayBlueVsRed
    val eval = pairing.matchupEvaluations
    eval.validate()
  }

  @Test
  def testValidEvaluations(): Unit = {
    val eval = MatchupEvaluations.fromScoreArray(norwayBlue, norwayRed, scoreArray)
    for (maxArmy <- norwayBlue.factions) {
      for (minArmy <- norwayRed.factions) {
        val matchup: Matchup = new Matchup(maxArmy, minArmy)
        eval.addEvaluation(matchup, 10)
      }
    }
    eval.validate()
    val matchup: Matchup = new Matchup(norwayBlue.factions.head, norwayRed.factions.head)
    assertThat(eval.scoreMatchup(matchup), equalTo(10))
  }

  @Test
  def testBuildFromScoreArray(): Unit = {
    val evalauations: MatchupEvaluations = MatchupEvaluations.fromScoreArray(norwayBlue, norwayRed, scoreArray)
    evalauations.validate()
  }

  @Test
  def testMatchupEquality(): Unit = {
    val matchup: Matchup = new Matchup(new Faction("a1"), new Faction("b1"))
    val matchup2: Matchup = new Matchup(new Faction("a1"), new Faction("b1"))
    assertEquals(matchup, matchup2)
  }

  @Test
  def testMapContainsMatchup(): Unit = {
    val matchup: Matchup = new Matchup(new Faction("a1"), new Faction("b1"))
    val matchup2: Matchup = new Matchup(new Faction("a1"), new Faction("b1"))
    val map: mutable.HashMap[Matchup, Int] = new mutable.HashMap[Matchup, Int]()
    map.put(matchup, 10)
    assertEquals(10, map.get(matchup2).get)
  }

}
