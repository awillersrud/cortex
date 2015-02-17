package pairing

import org.junit.Test
import pairing.TestData._


class PairingTest {

  @Test
  def alphaBetaTest6(): Unit = {
    new Pairing(Scenario.battlelineFirst, MatchupEvalauations.fromScoreArray(etcNor6, stefleifs6, scoreArraystefleifs6)).evaluateMoves(Nil)
  }

  @Test
  def alphaBetaTestStefleifs(): Unit = {
    new Pairing(Scenario.battlelineFirst, MatchupEvalauations.fromScoreArray(bskTeam, stefleifs, scoreArraystefleifs)).evaluateMoves(Nil)
  }

  @Test
  def alphaBetaTestStefleifsPutUpCounters(): Unit = {
    new Pairing(Scenario.battlelineFirst, MatchupEvalauations.fromScoreArray(bskTeam, stefleifs, scoreArraystefleifs)).evaluateMoves(new PutUpMax(new Army("Martin")) :: new PutUpMin(new Army("Kaj DE")) :: Nil)
  }

  @Test
  def alphaBetaTestStefleifsChooseCounters(): Unit = {
    new Pairing(Scenario.battlelineFirst, MatchupEvalauations.fromScoreArray(bskTeam, stefleifs, scoreArraystefleifs)).evaluateMoves(
      new PutUpMax(new Army("Martin")) ::
        new PutUpMin(new Army("Kaj DE")) ::
      new CounterMax(new Army("Amund"), new Army("Asbjørn")) ::
      new CounterMin(new Army("Johan EM"), new Army("Stefan DoC"))
        :: Nil)
  }

  @Test
  def lagkamp2(): Unit = {
    new Pairing(Scenario.battlelineFirst, MatchupEvalauations.fromScoreArray(etcNor8, teamAwesome_2, scoreArrayteamAwesome_2)).evaluateMoves(
      new PutUpMax(new Army("Asbjørn")) ::
      new PutUpMin(new Army("Lasse EM")) ::
      new CounterMax(new Army("Christian"), new Army("Stian")) ::
      new CounterMin(new Army("Kenneth OK"), new Army("Geir DE")) ::
        //new ChooseCounterMax(new Army("Geir DE"), new Army("Kenneth OK")) ::
        //new ChooseCounterMin(new Army("Christian"), new Army("Stian")) ::
//        new PutUpMax(new Army("Stian")) ::
//        new PutUpMin(new Army("Mats WoC")) ::
//        new CounterMax(new Army("Amund"), new Army("Øystein")) ::
//        new CounterMin(new Army("Thomas BR"), new Army("Julian DW")) ::
//        new ChooseCounterMax(new Army("Thomas BR"), new Army("Julian DW")) ::
//        new ChooseCounterMin(new Army("Øystein"), new Army("Amund")) ::
//        new PutUpMax(new Army("Jarle")) ::
//        new PutUpMin(new Army("Julian DW")) ::
        Nil)
  }

  @Test
  def put_up_moves() {
    new Pairing(Scenario.battlelineFirst, MatchupEvalauations.fromScoreArray(bskTeam, stefleifs, scoreArraystefleifs)).evaluateMoves(Nil)
  }

  @Test
  def chooseCounterMinHashTest() {
    val testArmy = new Army("test")
    val testArmy2 = new Army("test2")
    assert((testArmy :: testArmy2 :: Nil).hashCode() == (testArmy :: testArmy2 :: Nil).hashCode())
  }

}
