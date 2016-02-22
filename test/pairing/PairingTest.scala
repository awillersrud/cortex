package pairing

import java.io.PrintWriter

import org.junit.Assert.assertEquals
import org.junit.Test
import pairing.TestPairings._


class PairingTest {

  @Test
  def alphaBetaTest(): Unit = {
    norwayBlueVsRed.evaluateMoves(verbose = true)
  }

  @Test
  def alphaBetaTestPutUp(): Unit = {
    norwayBlueVsRed
      .makeMoves(new PutUp(martin, true) :: Nil)
      .evaluateMoves()
  }

  @Test
  def alphaBetaTestStefleifsChooseCounters(): Unit = {
    norwayBlueVsRed.makeMoves(
      new PutUp(martin, true) ::
        new Counter((gard, jonas), false) :: Nil)
      .evaluateMoves()
  }

  @Test
  def chooseCounterMinHashTest() {
    val testFaction = new Faction("test")
    val testFaction2 = new Faction("test2")
    assert((testFaction :: testFaction2 :: Nil).hashCode() == (testFaction :: testFaction2 :: Nil).hashCode())
  }

  val testkampMoves: List[Move] =
    new PutUp(martin, true) ::
      new Counter((gard, jonas), false) ::
      new ChooseAndCounter(gard, jonas, (asbjorn, endre), true) ::
      new ChooseAndCounter(asbjorn, endre, (terje, jarle), false) ::
    new ChooseAndCounter(terje, jarle, (thomas, leif), true) ::
      new ChooseLastMatchups(thomas, leif, false) ::
      Nil

  val testkampExpectedScores = Map[Move, Int](
    new PutUp(martin, true) -> 24,
      new Counter((gard, jonas), false) -> 29,
      new ChooseAndCounter(gard, jonas, (asbjorn, endre), true) -> 27,
      new ChooseAndCounter(asbjorn, endre, (terje, jarle), false) -> 31,
      new ChooseAndCounter(terje, jarle, (thomas, leif), true) -> 31,
      new ChooseLastMatchups(thomas, leif, false) -> 31
    )

  @Test
  def testPairingLagkamp5(): Unit = {
    val lagkamp: Pairing = TestPairings.norwayBlueVsRed

    verifyExpectedScores(lagkamp, expectedScores = testkampExpectedScores)
  }

  def verifyExpectedScores(lagkamp: Pairing, moves: List[Move] = testkampMoves, expectedScores: Map[Move, Int]): Unit = {
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
  def egfPrinterTest(): Unit = {
    val pairing = TestPairings.norwayBlueVsRed
    pairing.makeMoves(testkampMoves.dropRight(2))
    new EgfPrinter().printEgfMove(pairing, new PrintWriter(System.out))
  }

}
