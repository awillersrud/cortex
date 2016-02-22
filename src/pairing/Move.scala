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
    gameState.verifyNumberOfFactions()
    assertThat("Unexpected number of factions in max hand: " + getClass, gameState.maxFactionsInHand.size, equalTo(expectedNumberOfMaxFactionsInHandPreMove(gameState)))
    assertThat("Unexpected number of factions in min hand: " + getClass, gameState.minFactionsInHand.size, equalTo(expectedNumberOfMinFactionsInHandPreMove(gameState)))
  }

  def verifyStatePostMove(gameState: GameState): Unit = {
    gameState.verifyNumberOfFactions()
    assertThat("Unexpected number of factions in max hand: " + getClass, gameState.maxFactionsInHand.size, equalTo(expectedNumberOfMaxFactionsInHandPostMove(gameState)))
    assertThat("Unexpected number of factions in min hand: " + getClass, gameState.minFactionsInHand.size, equalTo(expectedNumberOfMinFactionsInHandPostMove(gameState)))
  }

  def equals(other: Any): Boolean

  override def hashCode = toString.hashCode

  def expectedNumberOfMaxFactionsInHandPreMove(gameState: GameState) : Int
  def expectedNumberOfMinFactionsInHandPreMove(gameState: GameState) : Int
  def expectedNumberOfMaxFactionsInHandPostMove(gameState: GameState) : Int
  def expectedNumberOfMinFactionsInHandPostMove(gameState: GameState) : Int
}
