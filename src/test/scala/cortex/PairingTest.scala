package cortex

import org.junit.Assert.assertEquals
import org.junit.Test
import cortex.TestPairings._
import cortex.moves.{Counter, Move, PutUp}


class PairingTest {

  @Test
  def testEvalutateStartingMoves(): Unit = {
    val moves: List[Evaluation] = norwayBlueVsRed.evaluateMoves(verbose = true)
    assert(moves.size == 5)
  }

  @Test
  def testEvalutateFirstCounterMoves(): Unit = {
    val moves: List[Evaluation] = norwayBlueVsRed
      .makeMoves(new PutUp(martin, norwayBlue) :: Nil)
      .evaluateMoves()
    assert(moves.size == 5*4/2)
  }

  @Test
  def testEvalutateFirstChooseAndCounterMoves(): Unit = {
    val moves: List[Evaluation] = norwayBlueVsRed.makeMoves(
      new PutUp(martin, norwayBlue) ::
        new Counter((gard, jonas), norwayRed) :: Nil)
      .evaluateMoves()
    assert(moves.size == 4*3/2*2)
  }

  @Test
  def testFactionListEquality() {
    val testFaction = new Faction("test")
    val testFaction2 = new Faction("test2")
    assert((testFaction :: testFaction2 :: Nil).hashCode() == (testFaction :: testFaction2 :: Nil).hashCode())
  }

  @Test
  def testExpectedScores(): Unit = {
    val pairing: Pairing = TestPairings.norwayBlueVsRed

    verifyExpectedScores(pairing, blueVsRedMoves, blueVsRedExpectedScores)

    blueVsRedMoves.reverse.foreach { pairing.undoMove }

    verifyExpectedScores(pairing, blueVsRedMoves, blueVsRedExpectedScores)
  }

  def verifyExpectedScores(pairing: Pairing, moves: List[Move], expectedScores: Map[Move, Int]): Unit = {
    for (move <- moves) {
      if (expectedScores.contains(move)) {
        val evaluation: Evaluation = pairing.evaluateMove(move)
        val expectedScore: Int = expectedScores.get(move).get
        val actualScore: Int = evaluation.score.minScore
        println("Verifying score for " + move + ":" + expectedScore)
        assertEquals("Wrong score for: " + move, expectedScore, actualScore)
      }
      pairing.makeMove(move)
    }

  }

}
