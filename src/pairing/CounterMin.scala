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

  override def choiceDescription = "Min counters"

  override def choice = counters._1 + "/" + counters._2

  override def equals(other: Any) : Boolean = other match {
    case counterMin:CounterMin => (counterMin.counters._1.equals(counters._1) && counterMin.counters._2.equals(counters._2)) ||
      (counterMin.counters._2.equals(counters._1) && counterMin.counters._1.equals(counters._2))
    case _ => false
  }

  def maximizing : Boolean = false
}
