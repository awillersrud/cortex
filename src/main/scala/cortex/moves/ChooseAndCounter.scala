package cortex.moves

import cortex._

class ChooseAndCounter(val chosenFaction: Faction, val nonChosenFaction: Faction, val counters: (Faction, Faction), val team: Team) extends Move {

  override def nextMoves(gameState: GameState) : List[Move] = {
    if (gameState.factionsInHand(!maximizing).size == 1) {
      new ChooseLastMatchups(this.counters._1, this.counters._2, gameState.team(!maximizing)) ::
        new ChooseLastMatchups(this.counters._2, this.counters._1, gameState.team(!maximizing)) :: Nil
    } else {
      Pairing.combinations(gameState.factionsInHand(!maximizing)).flatMap { newCounters: (Faction, Faction) =>
        new ChooseAndCounter(this.counters._1, this.counters._2, newCounters, gameState.team(!maximizing)) ::
          new ChooseAndCounter(this.counters._2, this.counters._1, newCounters, gameState.team(!maximizing)) :: Nil
      }.toList
    }

  }

  var previousPutUp : Option[Faction] = None
  var previousCounters : Option[(Faction, Faction)] = None

  override def makeMove(gameState: GameState): Unit = {

    // Add chosen matchup
    val putUp: Faction = gameState.getPutUp(maximizing).get
    if (maximizing) {
      gameState.addMatchup(new Matchup(putUp, chosenFaction))
    } else {
      gameState.addMatchup(new Matchup(chosenFaction, putUp))
    }

    // Remove new counters from hand
    gameState.removeFactionFromHand(this.counters._1, maximizing)
    gameState.removeFactionFromHand(this.counters._2, maximizing)
    gameState.setCounters(Some(this.counters), maximizing)

    // Store previous values for undo support
    previousPutUp = gameState.getPutUp(maximizing)
    previousCounters = gameState.getCounters(!maximizing)
    gameState.setCounters(None, !maximizing)
    gameState.setPutUp(None, maximizing)

    // Non chosen faction becomes next put up
    gameState.setPutUp(Some(nonChosenFaction), !maximizing)
    gameState.round += 1
  }

  override def undoMove(gameState: GameState): Unit = {
    // Undo chosen matchup
    val chosenMatchup: Matchup = gameState.removeMatchup()

    // Add counters from hand
    gameState.addFactionToHand(this.counters._1, maximizing)
    gameState.addFactionToHand(this.counters._2, maximizing)

    gameState.setPutUp(previousPutUp, maximizing)
    gameState.setCounters(previousCounters, !maximizing)
    gameState.setCounters(None, maximizing)

    previousPutUp = None
    previousCounters = None

    // Remove non-chosen as put up
    gameState.setPutUp(None, !maximizing)
    gameState.round -= 1
  }

  def chosenMatchupScore(gameState: GameState) =
    if (maximizing)
      gameState.scoreMatchup(gameState.maxFactionPutUp.get, chosenFaction)
    else
      gameState.scoreMatchup(chosenFaction, gameState.minFactionPutUp.get)

  def nonChosenMatchupScore(gameState: GameState) =
    if (maximizing)
      gameState.scoreMatchup(gameState.maxFactionsInHand.head, nonChosenFaction)
    else
      gameState.scoreMatchup(nonChosenFaction, gameState.minFactionsInHand.head)

  def getDescription(gameState: GameState) = {
      gameState.team(maximizing).name + " velger " +
        chosenFaction + " vs " +
        gameState.getPutUp(maximizing).get + "(" +
        chosenMatchupScore(gameState) + ") og kontrer " +
        nonChosenFaction + " med (" + counters._1 + ", " + counters._2 + ")"
  }

  override def equals(other: Any) = other match {
    case chooseCounterMax:ChooseAndCounter =>
      chooseCounterMax.chosenFaction.equals(chosenFaction) && chooseCounterMax.nonChosenFaction.equals(nonChosenFaction) &&
      chooseCounterMax.counters._1.equals(counters._1) && chooseCounterMax.counters._2.equals(counters._2)
    case _ => false
  }

  override def choiceDescription = "velger"

  override def choice = chosenFaction.name + " og kontrer " + nonChosenFaction + " med (" + counters._1 + ", " + counters._2 + ")"

  def maximizing : Boolean = team.max

}
