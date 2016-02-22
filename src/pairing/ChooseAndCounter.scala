package pairing

class ChooseAndCounter(val chosenFaction: Faction, val nonChosenFaction: Faction, val counters: (Faction, Faction), val max: Boolean) extends Move {

  override def nextMoves(gameState: GameState) : List[Move] = {
    if (gameState.factionsInHand(!max).size == 1) {
      new ChooseLastMatchups(this.counters._1, this.counters._2, !max) :: new ChooseLastMatchups(this.counters._2, this.counters._1, !max) :: Nil
    } else {
      Pairing.combinations(gameState.factionsInHand(!max)).flatMap { newCounters: (Faction, Faction) =>
        new ChooseAndCounter(this.counters._1, this.counters._2, newCounters, !max) :: new ChooseAndCounter(this.counters._2, this.counters._1, newCounters, !max) :: Nil
      }.toList
    }

  }

  def expectedNumberOfMaxFactionsInHandPreMove(gameState: GameState) : Int = gameState.factionsPreRound - 3
  def expectedNumberOfMinFactionsInHandPreMove(gameState: GameState) : Int = gameState.factionsPreRound - 3
  def expectedNumberOfMaxFactionsInHandPostMove(gameState: GameState) : Int = gameState.factionsPreRound - (if (gameState.isLastRound) 4 else 3)
  def expectedNumberOfMinFactionsInHandPostMove(gameState: GameState) : Int = gameState.factionsPreRound - (if (gameState.isLastRound) 3 else 2)

  var previousPutUp : Option[Faction] = None
  var previousCounters : Option[(Faction, Faction)] = None

  override def makeMove(gameState: GameState): Unit = {

    // Add chosen matchup
    val putUp: Faction = gameState.getPutUp(max).get
    if (max) {
      gameState.addMatchup(new Matchup(putUp, chosenFaction))
    } else {
      gameState.addMatchup(new Matchup(chosenFaction, putUp))
    }

    // Remove new counters from hand
    gameState.removeFactionFromHand(this.counters._1, max)
    gameState.removeFactionFromHand(this.counters._2, max)
    gameState.setCounters(Some(this.counters), max)

    // Store previous values for undo support
    previousPutUp = gameState.getPutUp(max)
    previousCounters = gameState.getCounters(!max)
    gameState.setCounters(None, !max)
    gameState.setPutUp(None, max)

    // Non chosen faction becomes next put up
    gameState.setPutUp(Some(nonChosenFaction), !max)
    gameState.round += 1
  }

  override def undoMove(gameState: GameState): Unit = {
    // Undo chosen matchup
    val chosenMatchup: Matchup = gameState.removeMatchup()

    // Add counters from hand
    gameState.addFactionToHand(this.counters._1, max)
    gameState.addFactionToHand(this.counters._2, max)

    gameState.setPutUp(previousPutUp, max)
    gameState.setCounters(previousCounters, !max)
    gameState.setCounters(None, max)

    previousPutUp = None
    previousCounters = None

    // Remove non-chosen as put up
    gameState.setPutUp(None, !max)
    gameState.round -= 1
  }

  def chosenMatchupScore(gameState: GameState) = gameState.scoreMatchup(gameState.maxFactionPutUp.get, chosenFaction)

  def nonChosenMatchupScore(gameState: GameState) = gameState.scoreMatchup(gameState.maxFactionsInHand.head, nonChosenFaction)

  def getDescription(gameState: GameState) = {
    val nonChosen = if (gameState.maxFactionsInHand.size == 1) nonChosenFaction + " vs " + gameState.maxFactionsInHand.head + "(" + nonChosenMatchupScore(gameState) + ")" else "return " + nonChosenFaction + " to hand"
    gameState.maxTeam.name + " chooses: " +
      chosenFaction + " vs " + gameState.maxFactionPutUp.get + "(" + chosenMatchupScore(gameState) + ") and " +
      nonChosen
  }

  override def equals(other: Any) = other match {
    case chooseCounterMax:ChooseAndCounter =>
      chooseCounterMax.chosenFaction.equals(chosenFaction) && chooseCounterMax.nonChosenFaction.equals(nonChosenFaction) &&
      chooseCounterMax.counters._1.equals(counters._1) && chooseCounterMax.counters._2.equals(counters._2)
    case _ => false
  }

  override def choiceDescription = "choose"

  override def choice = chosenFaction.name + " and counters (" + counters._1 + ", " + counters._2 + ")"

  def maximizing : Boolean = max

}
