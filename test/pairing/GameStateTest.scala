package pairing

import org.hamcrest.CoreMatchers.equalTo
import org.junit.Assert._
import org.junit._
import pairing.TestData._

class GameStateTest {

  @Test
  def testInitialArmiesInHand(): Unit = {
    val gameState: GameState = new GameState(Scenario.battlelineFirst, MatchupEvalauations.fromScoreArray(bskTeam, hyms, scoreArrayHyms))
    assertThat(gameState.minArmiesInHand.size, equalTo(4))
    assertThat(gameState.minArmiesInHand.toList, equalTo(hyms.armies.sorted))
  }

  @Test
  def testIsLastRound_first_round_of_4(): Unit = {
    val gameState: GameState = new GameState(Scenario.battlelineFirst, MatchupEvalauations.fromScoreArray(bskTeam, hyms, scoreArrayHyms))
    gameState.round += 1
    assertTrue(gameState.isLastRound)
  }

  @Test
  def testIsLastRound_second_round_of_4_fails(): Unit = {
    val gameState: GameState = new GameState(Scenario.battlelineFirst, MatchupEvalauations.fromScoreArray(bskTeam, hyms, scoreArrayHyms))
    gameState.round += 2
    try {
      gameState.isLastRound
      fail("Expected exception")
    } catch {
      case e:IllegalStateException => // expected
    }
  }

  @Test
  def testIsLastRound_first_round_of_6_is_not(): Unit = {
    val gameState: GameState = new GameState(Scenario.battlelineFirst, MatchupEvalauations.fromScoreArray(etcNor6, stefleifs6, scoreArraystefleifs6))
    gameState.round += 1
    assertFalse(gameState.isLastRound)
  }

  @Test
  def testRemoveAddKeepsOrdering(): Unit = {
    val gameState: GameState = new GameState(Scenario.battlelineFirst, MatchupEvalauations.fromScoreArray(bskTeam, hyms, scoreArrayHyms))
    val maxArmy: Army = new Army("Asbjørn")
    gameState.removeMaxArmyFromHand(maxArmy)
    gameState.addMaxArmyToHand(maxArmy)
    assertThat(gameState.maxArmiesInHand.toList, equalTo(bskTeam.armies.sorted))
  }

  @Test
  def testAddNonMaxArmyToMaxHand_fails(): Unit = {
    val gameState: GameState = new GameState(Scenario.battlelineFirst, MatchupEvalauations.fromScoreArray(bskTeam, hyms, scoreArrayHyms))
    try {
      gameState.addMaxArmyToHand(new Army("unknown"))
      fail("Expected exception")
    } catch {
      case e:IllegalArgumentException => // expected
    }
  }

  @Test
  def testAddNonMinArmyToMaxHand_fails(): Unit = {
    val gameState: GameState = new GameState(Scenario.battlelineFirst, MatchupEvalauations.fromScoreArray(bskTeam, hyms, scoreArrayHyms))
    try {
      gameState.addMinArmyToHand(new Army("unknown"))
      fail("Expected exception")
    } catch {
      case e:IllegalArgumentException => // expected
    }
  }

  @Test
  def testAddExistingMinArmyToHand_fails(): Unit = {
    val gameState: GameState = new GameState(Scenario.battlelineFirst, MatchupEvalauations.fromScoreArray(bskTeam, hyms, scoreArrayHyms))
    try {
      gameState.addMaxArmyToHand(new Army("Amund"))
      fail("Expected exception")
    } catch {
      case e:IllegalArgumentException => // expected
    }
  }

  @Test
  def testAddExistingMaxArmyToHand_fails(): Unit = {
    val gameState: GameState = new GameState(Scenario.battlelineFirst, MatchupEvalauations.fromScoreArray(bskTeam, hyms, scoreArrayHyms))
    try {
      gameState.addMaxArmyToHand(new Army("Amund"))
      fail("Expected exception")
    } catch {
      case e:IllegalArgumentException => // expected
    }
  }

  @Test
  def testScoreMatchups(): Unit = {
    val gameState: GameState = new GameState(Scenario.battlelineFirst, MatchupEvalauations.fromScoreArray(bskTeam, stefleifs, scoreArraystefleifs))
    assertThat(gameState.scoreChosenMatchups(Nil).minScore, equalTo(0))

    addMatchup(gameState, new Army("Martin"), new Army("Johan EM"))
    assertThat(gameState.scoreChosenMatchups(Nil).minScore, equalTo(11))

    addMatchup(gameState, new Army("Asbjørn"), new Army("Kaj DE"))
    assertThat(gameState.scoreChosenMatchups(Nil).minScore, equalTo(21))

    addMatchup(gameState, new Army("Amund"), new Army("Christian HE"))
    assertThat(gameState.scoreChosenMatchups(Nil).minScore, equalTo(30))

    addMatchup(gameState, new Army("Øystein"), new Army("Stefan DoC"))
    assertThat(gameState.scoreChosenMatchups(Nil).minScore, equalTo(41))
    assertThat(gameState.scoreChosenMatchups(Nil).avg, equalTo(41.0))
  }

  def addMatchup(gameState: GameState, maxArmy: Army, minArmy: Army) {
    gameState.removeMaxArmyFromHand(maxArmy)
    gameState.removeMinArmyFromHand(minArmy)
    gameState.addMatchup(maxArmy, minArmy)
  }
}
