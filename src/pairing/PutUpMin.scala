package pairing

class PutUpMin(val army: Army) extends Move {
  def nextMoves(gameState: GameState) : List[Move] = {
    Pairing.combinations(gameState.maxArmiesInHand).map { counters: (Army, Army) =>
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

  override def choiceDescription = "put up"
  override def choice = army.name

  def maximizing : Boolean = false

  override def equals(other: Any) = other match {
    case putUpMin:PutUpMin => putUpMin.army.equals(army)
    case _ => false
  }
}
