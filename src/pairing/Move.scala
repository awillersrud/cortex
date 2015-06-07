package pairing

import org.hamcrest.CoreMatchers._
import org.junit.Assert._

abstract class Move() {
  def nextMoves(gameState: GameState) : List[Move]
  def score(gameState: GameState, minMoves: List[Move]) : Score = { throw new UnsupportedOperationException() }

  def getDescription(gameState: GameState) : String

  def makeMove(gameState: GameState)
  def undoMove(gameState: GameState)

  def choice : String

  def choiceDescription : String

  override def toString = choiceDescription + " " + choice

  def maximizing : Boolean

  def makeMoveAndVerify(gameState: GameState): Unit = {
    verifyStatePreMove(gameState)
    makeMove(gameState)
    verifyStatePostMove(gameState)
  }
  def undoMoveAndVerify(gameState: GameState): Unit = {
    verifyStatePostMove(gameState)
    undoMove(gameState)
    verifyStatePreMove(gameState)
  }

  def verifyStatePreMove(gameState: GameState): Unit = {
    gameState.verifyNumberOfArmies()
    assertThat("Unexpected number of armies in max hand: " + getClass, gameState.maxArmiesInHand.size, equalTo(expectedNumberOfMaxArmiesInHandPreMove(gameState)))
    assertThat("Unexpected number of armies in min hand: " + getClass, gameState.minArmiesInHand.size, equalTo(expectedNumberOfMinArmiesInHandPreMove(gameState)))
  }

  def verifyStatePostMove(gameState: GameState): Unit = {
    gameState.verifyNumberOfArmies()
    assertThat("Unexpected number of armies in max hand: " + getClass, gameState.maxArmiesInHand.size, equalTo(expectedNumberOfMaxArmiesInHandPostMove(gameState)))
    assertThat("Unexpected number of armies in min hand: " + getClass, gameState.minArmiesInHand.size, equalTo(expectedNumberOfMinArmiesInHandPostMove(gameState)))
  }

  def equals(other: Any): Boolean

  override def hashCode = toString.hashCode

  def expectedNumberOfMaxArmiesInHandPreMove(gameState: GameState) : Int
  def expectedNumberOfMinArmiesInHandPreMove(gameState: GameState) : Int
  def expectedNumberOfMaxArmiesInHandPostMove(gameState: GameState) : Int
  def expectedNumberOfMinArmiesInHandPostMove(gameState: GameState) : Int
}
