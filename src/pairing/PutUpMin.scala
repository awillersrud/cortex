package pairing

class PutUpMin(val army: Army) extends Move {
  def nextMoves(gameState: GameState) : List[Move] = {
    Pairing.counterCombinations(gameState.maxArmiesInHand).map { counters: (Army, Army) =>
      new CounterMax(counters)
    }.toList
  }

  def expectedNumberOfMaxArmiesInHandPreMove(gameState: GameState) : Int = gameState.armiesPreRound - 1
  def expectedNumberOfMinArmiesInHandPreMove(gameState: GameState) : Int = gameState.armiesPreRound
  def expectedNumberOfMaxArmiesInHandPostMove(gameState: GameState) : Int = gameState.armiesPreRound - 1
  def expectedNumberOfMinArmiesInHandPostMove(gameState: GameState) : Int = gameState.armiesPreRound - 1

  override def makeMove(gameState: GameState) {
    gameState.removeMinArmyFromHand(army)
    gameState.minArmyPutUp = Some(army)
  }

  override def undoMove(gameState: GameState): Unit = {
    gameState.addMinArmyToHand(army)
    gameState.minArmyPutUp = None
  }

  def getDescription(gameState: GameState) = gameState.minTeam.name + " put up: " + army.name

  override def toString = "Min put up " + army

  def maximizing : Boolean = false
}
