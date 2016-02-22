package pairing

import org.hamcrest.CoreMatchers.equalTo
import org.junit.Assert._
import org.junit._
import pairing.TestPairings._

class GameStateTest {

  @Test
  def testInitialArmiesInHand(): Unit = {
    val gameState: GameState = new GameState(MatchupEvaluations.fromScoreArray(norwayBlue, norwayRed, scoreArray))
    assertThat(gameState.minFactionsInHand.size, equalTo(5))
    assertThat(gameState.minFactionsInHand.toList, equalTo(norwayRed.factions.sorted))
  }

  @Test
  def testIsLastRound_fourth_round_of_5(): Unit = {
    val gameState: GameState = new GameState(MatchupEvaluations.fromScoreArray(norwayBlue, norwayRed, scoreArray))
    gameState.round += 4
    assertTrue(gameState.isLastRound)
  }

  @Test
  def testIsLastRound_fifth_round_of_5_fails(): Unit = {
    val gameState: GameState = new GameState(MatchupEvaluations.fromScoreArray(norwayBlue, norwayRed, scoreArray))
    gameState.round += 5
    try {
      gameState.isLastRound
      fail("Expected exception")
    } catch {
      case e:IllegalStateException => // expected
    }
  }

  @Test
  def testIsLastRound_first_round_of_5_is_not(): Unit = {
    val gameState: GameState = new GameState(MatchupEvaluations.fromScoreArray(norwayBlue, norwayRed, scoreArray))
    gameState.round += 1
    assertFalse(gameState.isLastRound)
  }

  @Test
  def testRemoveAddKeepsOrdering(): Unit = {
    val gameState: GameState = new GameState(MatchupEvaluations.fromScoreArray(norwayBlue, norwayRed, scoreArray))
    val maxArmy: Faction = asbjorn
    gameState.removeFactionFromHand(maxArmy, max = true)
    gameState.addFactionToHand(maxArmy, max = true)
    assertThat(gameState.maxFactionsInHand.toList, equalTo(norwayBlue.factions.sorted))
  }

  @Test
  def testAddNonMaxArmyToMaxHand_fails(): Unit = {
    val gameState: GameState = new GameState(MatchupEvaluations.fromScoreArray(norwayBlue, norwayRed, scoreArray))
    try {
      gameState.addFactionToHand(new Faction("unknown"), max = true)
      fail("Expected exception")
    } catch {
      case e:IllegalArgumentException => // expected
    }
  }

  @Test
  def testAddNonMinArmyToMaxHand_fails(): Unit = {
    val gameState: GameState = new GameState(MatchupEvaluations.fromScoreArray(norwayBlue, norwayRed, scoreArray))
    try {
      gameState.addFactionToHand(new Faction("unknown"), max = false)
      fail("Expected exception")
    } catch {
      case e:IllegalArgumentException => // expected
    }
  }

  @Test
  def testAddExistingMinArmyToHand_fails(): Unit = {
    val gameState: GameState = new GameState(MatchupEvaluations.fromScoreArray(norwayBlue, norwayRed, scoreArray))
    try {
      gameState.addFactionToHand(new Faction("Amund"), max = true)
      fail("Expected exception")
    } catch {
      case e:IllegalArgumentException => // expected
    }
  }

  @Test
  def testAddExistingMaxArmyToHand_fails(): Unit = {
    val gameState: GameState = new GameState(MatchupEvaluations.fromScoreArray(norwayBlue, norwayRed, scoreArray))
    try {
      gameState.addFactionToHand(new Faction("Amund"), max = true)
      fail("Expected exception")
    } catch {
      case e:IllegalArgumentException => // expected
    }
  }

  @Test
  def testScoreMatchups(): Unit = {
    val gameState: GameState = new GameState(MatchupEvaluations.fromScoreArray(norwayBlue, norwayRed, scoreArray))
    assertThat(gameState.scoreChosenMatchups(Nil).minScore, equalTo(0))

    addMatchup(gameState, martin, gard)
    assertThat(gameState.scoreChosenMatchups(Nil).minScore, equalTo(6))

    addMatchup(gameState, asbjorn, jarle)
    assertThat(gameState.scoreChosenMatchups(Nil).minScore, equalTo(10))

    addMatchup(gameState, endre, terje)
    assertThat(gameState.scoreChosenMatchups(Nil).minScore, equalTo(16))

    addMatchup(gameState, thomas, kuba)
    assertThat(gameState.scoreChosenMatchups(Nil).minScore, equalTo(23))

    addMatchup(gameState, leif, jonas)
    assertThat(gameState.scoreChosenMatchups(Nil).minScore, equalTo(29))

    assertThat(gameState.scoreChosenMatchups(Nil).avg, equalTo(29.0))
  }

  def addMatchup(gameState: GameState, maxArmy: Faction, minArmy: Faction) {
    gameState.removeFactionFromHand(maxArmy, max = true)
    gameState.removeFactionFromHand(minArmy, max = false)
    gameState.addMatchup(new Matchup(maxArmy, minArmy))
  }

}
