package pairing

import java.util.Date

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

  val lagkamp5Moves: List[Move] =
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

  val lagkamp5ExpectedScores = Map[Move, Int](
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

  @Test
  def testPairingLagkamp5(): Unit = {
    val lagkamp: Pairing = Treningskamper.lagkamp5

    verifyExpectedScores(lagkamp, expectedScores = lagkamp5ExpectedScores)
  }

  @Test
  def testPairingLagkamp5InverseInverse(): Unit = {
    val lagkamp: Pairing = Treningskamper.lagkamp5.inverse().inverse()

    verifyExpectedScores(lagkamp, expectedScores = lagkamp5ExpectedScores)
  }

  def verifyExpectedScores(lagkamp: Pairing, moves: List[Move] = lagkamp5Moves, expectedScores: Map[Move, Int]): Unit = {
    for (move <- moves) {
      if (expectedScores.contains(move)) {
        val evaluation: Evaluation = lagkamp.evaluateMove(move)
        val expectedScore: Int = expectedScores.get(move).get
        val actualScore: Int = evaluation.score.minScore
        println("Verifying score for " + lagkamp.describe(move) + ":" + expectedScore)
        assertEquals("Wrong score for: " + lagkamp.describe(move), expectedScore, actualScore)
      }
      lagkamp.makeMove(move)
    }
  }

  @Test
  def testPairingLagkamp5Inverse() {
    val lagkamp: Pairing = Treningskamper.lagkamp5

    val inverse: Pairing = lagkamp.inverse()

    val expectedScores = Map[Move, Int](
      new ChooseCounterMax(new Army("Martin LZ"), new Army("Asbjørn DE")) -> 69,
      new ChooseCounterMin(new Army("BM"), new Army("EM")) -> 69
    )

    verifyExpectedScores(inverse, Pairing.convertToInverseMoves(lagkamp5Moves), expectedScores)
  }

  @Test
  def egfPrinterTest(): Unit = {
    val pairing = Treningskamper.lagkamp5
    pairing.makeMoves(lagkamp5Moves.dropRight(4))
    new EgfPrinter().printEgfMove(pairing)
  }

  @Test
  def evaluateFirstPutUp() : Unit = {

    val pairing = EtcKamper2015.belgium
    for (maxArmy <- pairing.maxTeam.armies) {
      for (minArmy <- pairing.minTeam.armies) {
        val putUpMax: PutUpMax = new PutUpMax(maxArmy)
        val putUpMin: PutUpMin = new PutUpMin(minArmy)
        pairing.makeMove(putUpMax)
        pairing.makeMove(putUpMin)
        val evaluations: List[Evaluation] = pairing.evaluateMoves().sortBy(_.score)(Ordering[Score]).reverse

        println(putUpMax.choice + " - " + putUpMin.choice + " [" + evaluations.head.score.minScore + "] - " + new Date())

        pairing.undoMove(putUpMin)
        pairing.undoMove(putUpMax)
      }
    }
  }

}
