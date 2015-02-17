package pairing

class ChooseCounterMin(val chosenMaxArmy: Army, val nonChosenMaxArmy: Army) extends Move {

  def hash(gameState: GameState): Int = (gameState.minArmiesInHand.sortBy(_.name).toList ::: gameState.maxArmiesInHand.sortBy(_.name).toList ::: Nil).hashCode()

  //lazy val minArmiesInHand : List[Army] = chooseCounterMax.putUpCountersMin.putUpCountersMax.putUpMin.minArmiesInHand.filterNot(_ == chooseCounterMax.chosenMinArmy)
  //lazy val maxArmiesInHand : List[Army] = chooseCounterMax.putUpCountersMin.putUpCountersMax.putUpMin.putUpMax.maxArmiesInHand.filterNot(_ == chosenMaxArmy)

  def expectedNumberOfMaxArmiesInHandPreMove(gameState: GameState) : Int = gameState.armiesPreRound - (if (gameState.isLastRound) 4 else 3)
  def expectedNumberOfMinArmiesInHandPreMove(gameState: GameState) : Int = gameState.armiesPreRound - (if (gameState.isLastRound) 3 else 2)
  def expectedNumberOfMaxArmiesInHandPostMove(gameState: GameState) : Int = gameState.armiesPreRound - (if (gameState.isLastRound) 4 else 2)
  def expectedNumberOfMinArmiesInHandPostMove(gameState: GameState) : Int = gameState.armiesPreRound - (if (gameState.isLastRound) 4 else 2)

  var previousMinArmyPutUp : Option[Army] = None
  var previousMaxArmyCounters : Option[Pair[Army, Army]] = None

  override def nextMoves(gameState: GameState) : List[Move] = {
    if (gameState.isLastRound) {
      Nil
    } else {
      gameState.maxArmiesInHand.map { army: Army => new PutUpMax(army) }.toList
    }
  }

  override def makeMove(gameState: GameState): Unit = {
    gameState.addMatchup(chosenMaxArmy, gameState.minArmyPutUp.get)
    if (gameState.isLastRound) {
      val remainingMinArmyInHand: Army = gameState.minArmiesInHand.head
      gameState.removeMinArmyFromHand(remainingMinArmyInHand)
      gameState.addMatchup(nonChosenMaxArmy, remainingMinArmyInHand)
    } else {
      gameState.addMaxArmyToHand(nonChosenMaxArmy)
    }
    previousMinArmyPutUp = gameState.minArmyPutUp
    previousMaxArmyCounters = gameState.maxArmyCounters
    gameState.minArmyPutUp = None
    gameState.maxArmyCounters = None
  }

  override def undoMove(gameState: GameState): Unit = {
    if (gameState.isLastRound) {
      val nonChosenMatchup: (Army, Army) = gameState.removeMatchup()
      val chosenMatchup: (Army, Army) = gameState.removeMatchup()
      gameState.addMinArmyToHand(nonChosenMatchup._2)
    } else {
      gameState.removeMatchup()
      gameState.removeMaxArmyFromHand(nonChosenMaxArmy)
    }
    gameState.minArmyPutUp = previousMinArmyPutUp
    gameState.maxArmyCounters = previousMaxArmyCounters
    previousMaxArmyCounters = None
    previousMinArmyPutUp = None
  }

  def chosenMatchupScore(gameState: GameState) = gameState.scoreMatchup(chosenMaxArmy, gameState.minArmyPutUp.get)

  def nonChosenMatchupScore(gameState: GameState) = gameState.scoreMatchup(nonChosenMaxArmy, gameState.minArmiesInHand.head)

  override def score(gameState: GameState, minMoves: List[Move]) = {
    val score = gameState.scoreChosenMatchups(minMoves)
    //trackProgress(1)
    score
  }

  def getDescription(gameState: GameState) = {
    val nonChosen = if (gameState.isLastRound) nonChosenMaxArmy + " vs " + gameState.minArmiesInHand.head + "(" + nonChosenMatchupScore(gameState) + ")" else "return " + nonChosenMaxArmy + " to hand"
    gameState.minTeam.name + " chooses: " +
      chosenMaxArmy + " vs " + gameState.minArmyPutUp.get + "(" + chosenMatchupScore(gameState) + ") and " + nonChosen
  }

  override def toString = "Min chooses " + chosenMaxArmy

  def maximizing : Boolean = false
}
