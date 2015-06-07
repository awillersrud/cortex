package pairing

class ChooseCounterMax(val chosenMinArmy: Army, val nonChosenMinArmy: Army) extends Move {

  override def nextMoves(gameState: GameState) : List[Move] = {
    val counters = gameState.maxArmyCounters.get
    new ChooseCounterMin(counters._1, counters._2) :: new ChooseCounterMin(counters._2, counters._1) :: Nil
  }

  def expectedNumberOfMaxArmiesInHandPreMove(gameState: GameState) : Int = gameState.armiesPreRound - 3
  def expectedNumberOfMinArmiesInHandPreMove(gameState: GameState) : Int = gameState.armiesPreRound - 3
  def expectedNumberOfMaxArmiesInHandPostMove(gameState: GameState) : Int = gameState.armiesPreRound - (if (gameState.isLastRound) 4 else 3)
  def expectedNumberOfMinArmiesInHandPostMove(gameState: GameState) : Int = gameState.armiesPreRound - (if (gameState.isLastRound) 3 else 2)

  var previousMaxArmyPutUp : Option[Army] = None
  var previousMinArmyCounters : Option[(Army, Army)] = None

  override def makeMove(gameState: GameState): Unit = {
    gameState.addMatchup(new Matchup(gameState.maxArmyPutUp.get, chosenMinArmy), gameState.nextScenario)
    if (gameState.isLastRound) {
      val remainingMaxArmyInHand = gameState.maxArmiesInHand.head
      gameState.removeMaxArmyFromHand(remainingMaxArmyInHand)
      gameState.addMatchup(new Matchup(remainingMaxArmyInHand, nonChosenMinArmy), gameState.lastScenario)
    } else {
      gameState.addMinArmyToHand(nonChosenMinArmy)
    }
    previousMaxArmyPutUp = gameState.maxArmyPutUp
    previousMinArmyCounters = gameState.minArmyCounters
    gameState.maxArmyPutUp = None
    gameState.minArmyCounters = None
  }

  override def undoMove(gameState: GameState): Unit = {
    if (gameState.isLastRound) {
      val nonChosenMatchup = gameState.removeMatchup()
      val chosenMatchup = gameState.removeMatchup()
      gameState.addMaxArmyToHand(nonChosenMatchup.maxArmy)
    } else {
      val chosenMatchup: Matchup = gameState.removeMatchup()
      gameState.removeMinArmyFromHand(nonChosenMinArmy)
    }
    gameState.maxArmyPutUp = previousMaxArmyPutUp
    gameState.minArmyCounters = previousMinArmyCounters
    previousMaxArmyPutUp = None
    previousMinArmyCounters = None
  }

  def chosenMatchupScore(gameState: GameState) = gameState.scoreMatchup(gameState.maxArmyPutUp.get, chosenMinArmy, gameState.nextScenario)

  def nonChosenMatchupScore(gameState: GameState) = gameState.scoreMatchup(gameState.maxArmiesInHand.head, nonChosenMinArmy, gameState.lastScenario)

  def getDescription(gameState: GameState) = {
    val nonChosen = if (gameState.maxArmiesInHand.size == 1) nonChosenMinArmy + " vs " + gameState.maxArmiesInHand.head + "(" + nonChosenMatchupScore(gameState) + ")" else "return " + nonChosenMinArmy + " to hand"
    gameState.maxTeam.name + " chooses: " +
      chosenMinArmy + " vs " + gameState.maxArmyPutUp.get + "(" + chosenMatchupScore(gameState) + ") and " +
      nonChosen
  }

  override def equals(other: Any) = other match {
    case chooseCounterMax:ChooseCounterMax => chooseCounterMax.chosenMinArmy.equals(chosenMinArmy) && chooseCounterMax.nonChosenMinArmy.equals(nonChosenMinArmy)
    case _ => false
  }

  override def choiceDescription = "Max chooses"

  override def choice = chosenMinArmy.name

  def maximizing : Boolean = true

}
