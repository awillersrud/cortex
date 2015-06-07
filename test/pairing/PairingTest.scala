package pairing

import org.junit.Assert.assertEquals
import org.junit.Test
import pairing.TestData._


class PairingTest {

  @Test
  def alphaBetaTest6(): Unit = {
    new Pairing(Scenario.battlelineFirst, MatchupEvaluations.fromScoreArray(etcNor6, stefleifs6, scoreArraystefleifs6)).evaluateMoves()
  }

  @Test
  def alphaBetaTestStefleifs(): Unit = {
    new Pairing(Scenario.battlelineFirst, MatchupEvaluations.fromScoreArray(bskTeam, stefleifs, scoreArrayOlannonTest2)).evaluateMoves()
  }

  @Test
  def alphaBetaTestStefleifsPutUpCounters(): Unit = {
    new Pairing(Scenario.battlelineFirst, MatchupEvaluations.fromScoreArray(bskTeam, stefleifs, scoreArraystefleifs))
      .makeMoves(new PutUpMax(new Army("Martin")) :: new PutUpMin(new Army("Kaj DE")) :: Nil)
      .evaluateMoves()
  }

  @Test
  def alphaBetaTestStefleifsChooseCounters(): Unit = {
    new Pairing(Scenario.battlelineFirst, MatchupEvaluations.fromScoreArray(bskTeam, stefleifs, scoreArraystefleifs)).makeMoves(
      new PutUpMax(new Army("Martin")) ::
        new PutUpMin(new Army("Kaj DE")) ::
        new CounterMax(new Army("Amund"), new Army("Asbjørn")) ::
        new CounterMin(new Army("Johan EM"), new Army("Stefan DoC"))
        :: Nil).evaluateMoves()
  }

  @Test
  def lagkamp2(): Unit = {
    new Pairing(Scenario.battlelineFirst, MatchupEvaluations.fromScoreArray(etcNor8, teamAwesome_2, scoreArrayteamAwesome_2)).makeMoves(
      new PutUpMax(new Army("Asbjørn")) ::
        new PutUpMin(new Army("Lasse EM")) ::
        new CounterMax(new Army("Christian"), new Army("Stian")) ::
        new CounterMin(new Army("Kenneth OK"), new Army("Geir DE")) ::
        new ChooseCounterMax(new Army("Geir DE"), new Army("Kenneth OK")) ::
        new ChooseCounterMin(new Army("Christian"), new Army("Stian")) ::
        //        new PutUpMax(new Army("Stian")) ::
        //        new PutUpMin(new Army("Mats WoC")) ::
        //        new CounterMax(new Army("Amund"), new Army("?ystein")) ::
        //        new CounterMin(new Army("Thomas BR"), new Army("Julian DW")) ::
        //        new ChooseCounterMax(new Army("Thomas BR"), new Army("Julian DW")) ::
        //        new ChooseCounterMin(new Army("Øystein"), new Army("Amund")) ::
        //        new PutUpMax(new Army("Jarle")) ::
        //        new PutUpMin(new Army("Julian DW")) ::
        Nil
      ).evaluateMoves()
  }

  @Test
  def put_up_moves() {
    new Pairing(Scenario.battlelineFirst, MatchupEvaluations.fromScoreArray(bskTeam, stefleifs, scoreArraystefleifs)).evaluateMoves()
  }

  @Test
  def chooseCounterMinHashTest() {
    val testArmy = new Army("test")
    val testArmy2 = new Army("test2")
    assert((testArmy :: testArmy2 :: Nil).hashCode() == (testArmy :: testArmy2 :: Nil).hashCode())
  }

  @Test
  def testPairingLagkamp5(): Unit = {
    val moves: List[Move] =
    //    Runde 1
      new PutUpMax(new Army("Amund SK")) ::
        new PutUpMin(new Army("VC")) ::
        new CounterMax(new Army("Jarle HE"), new Army("Asbjørn DE")) ::
        new CounterMin(new Army("DoC"), new Army("EM")) ::
        new ChooseCounterMax(new Army("DoC"), new Army("EM")) ::
        new ChooseCounterMin(new Army("Jarle HE"), new Army("Asbjørn DE")) ::
        //    Runde 2
        new PutUpMax(new Army("Øystein DW")) ::
        new PutUpMin(new Army("SK")) ::
        new CounterMax(new Army("Martin LZ"), new Army("Stian WE")) ::
        new CounterMin(new Army("OK"), new Army("BR")) ::
        new ChooseCounterMax(new Army("BR"), new Army("OK")) ::
        new ChooseCounterMin(new Army("Stian WE"), new Army("Martin LZ")) ::
        //    Runde 3
        new PutUpMax(new Army("Christian TK")) ::
        new PutUpMin(new Army("OK")) ::
        new CounterMax(new Army("Martin LZ"), new Army("Asbjørn DE")) ::
        new CounterMin(new Army("BM"), new Army("EM")) ::
        new ChooseCounterMax(new Army("BM"), new Army("EM")) ::
        new ChooseCounterMin(new Army("Martin LZ"), new Army("Asbjørn DE")) ::
        Nil

    var previousMinScore = Integer.MAX_VALUE
    var previousMaxScore = 0

    val expectedScores = Map[Move, Int](
//      new CounterMax(new Army("Jarle HE"), new Army("Asbjørn DE")) -> 86,
//      new CounterMin(new Army("DoC"), new Army("EM")) -> 87,
      new ChooseCounterMax(new Army("DoC"), new Army("EM")) -> 87,
      new ChooseCounterMin(new Army("Jarle HE"), new Army("Asbjørn DE")) -> 90,
      new PutUpMax(new Army("Øystein DW")) -> 88,
      new PutUpMin(new Army("SK")) -> 88,
      new CounterMax(new Army("Martin LZ"), new Army("Stian WE")) -> 87,
      new CounterMin(new Army("OK"), new Army("BR")) -> 88,
      new ChooseCounterMax(new Army("BR"), new Army("OK")) -> 88,
      new ChooseCounterMin(new Army("Stian WE"), new Army("Martin LZ")) -> 88,
      new PutUpMax(new Army("Christian TK")) -> 85,
      new PutUpMin(new Army("OK")) -> 85,
      new CounterMax(new Army("Martin LZ"), new Army("Asbjørn DE")) -> 85,
      new CounterMin(new Army("BM"), new Army("EM")) -> 90,
      new ChooseCounterMax(new Army("BM"), new Army("EM")) -> 90,
      new ChooseCounterMin(new Army("Martin LZ"), new Army("Asbjørn DE")) -> 91
    )

    println("Making moves: " + moves)
    val lagkamp: Pairing = Treningskamper.lagkamp5
    for (move <- moves) {
      lagkamp.makeMove(move)
      println(lagkamp.gameState.chosenMatchups)
      lagkamp.undoMove(move)
      if (expectedScores.contains(move)) {
        val evaluation: Evaluation = lagkamp.evaluateMove(move)
        val expectedScore: Int = expectedScores.get(move).get
        val actualScore: Int = evaluation.score.minScore
        assertEquals("Wrong score for: " + move, expectedScore, actualScore)
      }
      println("Making move: " + move)
      lagkamp.makeMove(move)
    }

  }


}
