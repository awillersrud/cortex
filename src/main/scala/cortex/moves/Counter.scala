package cortex.moves

import cortex._

class Counter(val counters: (Faction, Faction), team: Team) extends Move {

  override def nextMoves(gameState: GameState) : List[Move] = {
    Pairing.combinations(gameState.factionsInHand(!maximizing)).flatMap { newCounters: (Faction, Faction) =>
      new ChooseAndCounter(this.counters._1, this.counters._2, newCounters, gameState.team(!maximizing)) ::
        new ChooseAndCounter(this.counters._2, this.counters._1, newCounters, gameState.team(!maximizing)) :: Nil
    }.toList
  }

  override def makeMove(gameState: GameState): Unit = {
    gameState.removeFactionFromHand(counters._1, maximizing)
    gameState.removeFactionFromHand(counters._2, maximizing)
    gameState.setCounters(Some(counters), maximizing)
  }

  override def undoMove(gameState: GameState): Unit = {
    gameState.addFactionToHand(counters._1, maximizing)
    gameState.addFactionToHand(counters._2, maximizing)
    gameState.setCounters(None, maximizing)
  }

  override def choiceDescription = "kontrer"

  override def choice = counters._1 + ", " + counters._2

  override def equals(other: Any) : Boolean = other match {
    case counterMin:Counter => (counterMin.counters._1.equals(counters._1) && counterMin.counters._2.equals(counters._2)) ||
      (counterMin.counters._2.equals(counters._1) && counterMin.counters._1.equals(counters._2))
    case _ => false
  }

  def maximizing : Boolean = team.max
}
