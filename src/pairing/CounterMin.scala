package pairing

class CounterMin(val counters: (Army, Army)) extends Move {

  override def nextMoves(gameState: GameState) : List[ChooseCounterMax] = {
    new ChooseCounterMax(counters._1, counters._2) :: new ChooseCounterMax(counters._2, counters._1) :: Nil
  }

  def expectedNumberOfMaxArmiesInHandPreMove(gameState: GameState) : Int = gameState.armiesPreRound - 3
  def expectedNumberOfMinArmiesInHandPreMove(gameState: GameState) : Int = gameState.armiesPreRound - 1
  def expectedNumberOfMaxArmiesInHandPostMove(gameState: GameState) : Int = gameState.armiesPreRound - 3
  def expectedNumberOfMinArmiesInHandPostMove(gameState: GameState) : Int = gameState.armiesPreRound - 3

  override def makeMove(gameState: GameState): Unit = {
    gameState.removeMinArmyFromHand(counters._1)
    gameState.removeMinArmyFromHand(counters._2)
    gameState.minArmyCounters = Some(counters)
  }

  override def undoMove(gameState: GameState): Unit = {
    gameState.addMinArmyToHand(counters._1)
    gameState.addMinArmyToHand(counters._2)
    gameState.minArmyCounters = None
  }

  def getDescription(gameState: GameState) = gameState.minTeam.name + " counters: (" + counters._1.name + "," + counters._2.name + ")"

  override def toString = "Min counters " + counters._1 + " and " + counters._2

  def maximizing : Boolean = false
}
