package pairing

class ChooseCounterMin(val chosenMaxArmy: Army, val nonChosenMaxArmy: Army) extends Move {

  def hash(gameState: GameState): Int = (gameState.minArmiesInHand.sortBy(_.name).toList ::: gameState.maxArmiesInHand.sortBy(_.name).toList ::: Nil).hashCode()

  def expectedNumberOfMaxArmiesInHandPreMove(gameState: GameState) : Int = gameState.armiesPreRound - (if (gameState.isLastRound) 4 else 3)
  def expectedNumberOfMinArmiesInHandPreMove(gameState: GameState) : Int = gameState.armiesPreRound - (if (gameState.isLastRound) 3 else 2)
  def expectedNumberOfMaxArmiesInHandPostMove(gameState: GameState) : Int = gameState.armiesPreRound - (if (gameState.isLastRound) 4 else 2)
  def expectedNumberOfMinArmiesInHandPostMove(gameState: GameState) : Int = gameState.armiesPreRound - (if (gameState.isLastRound) 4 else 2)

  var previousMinArmyPutUp : Option[Army] = None
  var previousMaxArmyCounters : Option[(Army, Army)] = None

  override def nextMoves(gameState: GameState) : List[Move] = {
    if (gameState.isLastRound) {
      Nil
    } else {
      gameState.maxArmiesInHand.map { army: Army => new PutUpMax(army) }.toList
    }
  }

  override def makeMove(gameState: GameState): Unit = {
    gameState.addMatchup(new Matchup(chosenMaxArmy, gameState.minArmyPutUp.get), gameState.nextScenario)
    if (gameState.isLastRound) {
      val remainingMinArmyInHand: Army = gameState.minArmiesInHand.head
      gameState.removeMinArmyFromHand(remainingMinArmyInHand)
      gameState.addMatchup(new Matchup(nonChosenMaxArmy, remainingMinArmyInHand), gameState.lastScenario)
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
      val nonChosenMatchup: Matchup = gameState.removeMatchup()
      val chosenMatchup: Matchup = gameState.removeMatchup()
      gameState.addMinArmyToHand(nonChosenMatchup.minArmy)
    } else {
      gameState.removeMatchup()
      gameState.removeMaxArmyFromHand(nonChosenMaxArmy)
    }
    gameState.minArmyPutUp = previousMinArmyPutUp
    gameState.maxArmyCounters = previousMaxArmyCounters
    previousMaxArmyCounters = None
    previousMinArmyPutUp = None
  }

  def chosenMatchupScore(gameState: GameState) = gameState.scoreMatchup(chosenMaxArmy, gameState.minArmyPutUp.get, gameState.nextScenario)

  def nonChosenMatchupScore(gameState: GameState) = gameState.scoreMatchup(nonChosenMaxArmy, gameState.minArmiesInHand.head, gameState.lastScenario)

  override def score(gameState: GameState, minMoves: List[Move]) = {
    gameState.scoreChosenMatchups(minMoves)
  }

  def getDescription(gameState: GameState) = {
    val nonChosen = if (gameState.isLastRound) nonChosenMaxArmy + " vs " + gameState.minArmiesInHand.head + "(" + nonChosenMatchupScore(gameState) + ")" else "return " + nonChosenMaxArmy + " to hand"
    gameState.minTeam.name + " chooses: " +
      chosenMaxArmy + " vs " + gameState.minArmyPutUp.get + "(" + chosenMatchupScore(gameState) + ") and " + nonChosen
  }

  override def choiceDescription = "Min chooses"

  override def choice = chosenMaxArmy.name

  override def equals(other: Any) = other match {
    case chooseCounterMin:ChooseCounterMin => chooseCounterMin.chosenMaxArmy.equals(chosenMaxArmy) && chooseCounterMin.nonChosenMaxArmy.equals(nonChosenMaxArmy)
    case _ => false
  }

  def maximizing : Boolean = false

  def staticValue(gameState: GameState, minMoves: List[Move]): Score = {
    var currentMatchupsScore = gameState.scoreChosenMatchups(minMoves)

    val aggregate: Score = gameState.aggregateRemainingPossibleMatchups
    val score: Int = currentMatchupsScore.minScore + 4 * (aggregate.total / aggregate.combinations)
    Score.estimatedScore(score, score, 1, minMoves)
  }
}
