package pairing

class Counter(val counters: (Faction, Faction), max: Boolean) extends Move {

  override def nextMoves(gameState: GameState) : List[Move] = {
    Pairing.combinations(gameState.factionsInHand(!max)).flatMap { newCounters: (Faction, Faction) =>
      new ChooseAndCounter(this.counters._1, this.counters._2, newCounters, !max) :: new ChooseAndCounter(this.counters._2, this.counters._1, newCounters, !max) :: Nil
    }.toList
  }

  def expectedNumberOfMaxFactionsInHandPreMove(gameState: GameState) : Int = gameState.factionsPreRound - 3
  def expectedNumberOfMinFactionsInHandPreMove(gameState: GameState) : Int = gameState.factionsPreRound - 1
  def expectedNumberOfMaxFactionsInHandPostMove(gameState: GameState) : Int = gameState.factionsPreRound - 3
  def expectedNumberOfMinFactionsInHandPostMove(gameState: GameState) : Int = gameState.factionsPreRound - 3

  override def makeMove(gameState: GameState): Unit = {
    gameState.removeFactionFromHand(counters._1, max)
    gameState.removeFactionFromHand(counters._2, max)
    gameState.setCounters(Some(counters), max)
  }

  override def undoMove(gameState: GameState): Unit = {
    gameState.addFactionToHand(counters._1, max)
    gameState.addFactionToHand(counters._2, max)
    gameState.setCounters(None, max)
  }

  def getDescription(gameState: GameState) = gameState.team(max).name + " counters: (" + counters._1.name + "," + counters._2.name + ")"

  override def choiceDescription = "counters"

  override def choice = counters._1 + "/" + counters._2

  override def equals(other: Any) : Boolean = other match {
    case counterMin:Counter => (counterMin.counters._1.equals(counters._1) && counterMin.counters._2.equals(counters._2)) ||
      (counterMin.counters._2.equals(counters._1) && counterMin.counters._1.equals(counters._2))
    case _ => false
  }

  def maximizing : Boolean = max
}
