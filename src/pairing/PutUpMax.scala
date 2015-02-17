package pairing

class PutUpMax(val army: Army) extends Move {
  def nextMoves(gameState: GameState) : List[Move] = {
    gameState.minArmiesInHand.map { army: Army => new PutUpMin(army) }.toList
  }

  def getDescription(gameState: GameState) = gameState.maxTeam.name + " put up: " + army.name

  def expectedNumberOfMaxArmiesInHandPreMove(gameState: GameState) : Int = gameState.armiesPreRound - 2 // correct for previous round number
  def expectedNumberOfMinArmiesInHandPreMove(gameState: GameState) : Int = gameState.armiesPreRound - 2 // correct for previous round number
  def expectedNumberOfMaxArmiesInHandPostMove(gameState: GameState) : Int = gameState.armiesPreRound - 1
  def expectedNumberOfMinArmiesInHandPostMove(gameState: GameState) : Int = gameState.armiesPreRound

  override def makeMove(gameState: GameState): Unit = {
    gameState.removeMaxArmyFromHand(army)
    gameState.maxArmyPutUp = Some(army)
    gameState.round += 1
  }

  override def undoMove(gameState: GameState): Unit = {
    gameState.addMaxArmyToHand(army)
    gameState.maxArmyPutUp = None
    gameState.round -= 1
  }

  override def toString = "Max put up " + army

  def maximizing : Boolean = true
}
