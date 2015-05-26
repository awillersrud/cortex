package pairing

class CounterMax(val counters: (Army, Army)) extends Move {

  override def nextMoves(gameState: GameState) : List[Move] = {
    Pairing.combinations(gameState.minArmiesInHand).map { counters: (Army, Army) =>
      new CounterMin(counters)
    }.toList
  }

  def expectedNumberOfMaxArmiesInHandPreMove(gameState: GameState) : Int = gameState.armiesPreRound - 1
  def expectedNumberOfMinArmiesInHandPreMove(gameState: GameState) : Int = gameState.armiesPreRound - 1
  def expectedNumberOfMaxArmiesInHandPostMove(gameState: GameState) : Int = gameState.armiesPreRound - 3
  def expectedNumberOfMinArmiesInHandPostMove(gameState: GameState) : Int = gameState.armiesPreRound - 1

  override def makeMove(gameState: GameState): Unit = {
    gameState.removeMaxArmyFromHand(counters._1)
    gameState.removeMaxArmyFromHand(counters._2)
    gameState.maxArmyCounters = Some(counters)
  }

  override def undoMove(gameState: GameState): Unit = {
    gameState.addMaxArmyToHand(counters._1)
    gameState.addMaxArmyToHand(counters._2)
    gameState.maxArmyCounters = None
  }

  def getDescription(gameState: GameState) = gameState.maxTeam + " counters: (" + counters._1.name + "," + counters._2.name + ")"

  override def toString = "Max counters " + counters._1 + " and " + counters._2

  def maximizing : Boolean = true
}
