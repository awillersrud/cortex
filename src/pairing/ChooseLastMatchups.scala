package pairing

class ChooseLastMatchups(val chosenFaction: Faction, val nonChosenFaction: Faction, max: Boolean) extends Move {
  override def nextMoves(gameState: GameState): List[Move] = Nil

  override def makeMove(gameState: GameState): Unit = {
    // Last move, add non chosen matchup
    val remainingFactionInHand = gameState.factionsInHand(max).head
    gameState.removeFactionFromHand(remainingFactionInHand, max)
    if (max) {
      // Important for undo support to add the non-chosen matchup last
      gameState.addMatchup(new Matchup(gameState.maxFactionPutUp.get, chosenFaction))
      gameState.addMatchup(new Matchup(remainingFactionInHand, nonChosenFaction))
    } else {
      // Important for undo support to add the non-chosen matchup last
      gameState.addMatchup(new Matchup(chosenFaction, gameState.minFactionPutUp.get))
      gameState.addMatchup(new Matchup(nonChosenFaction, remainingFactionInHand))
    }
  }

  override def undoMove(gameState: GameState): Unit = {
    // Last move, undo both non-chosen and chosen matchup
    val nonChosenMatchup = gameState.removeMatchup()
    val chosenMatchup = gameState.removeMatchup()
    if (max) {
      gameState.addFactionToHand(nonChosenMatchup.maxFaction, max = true)
    } else {
      gameState.addFactionToHand(nonChosenMatchup.minFaction, max = false)
    }
  }

  override def getDescription(gameState: GameState): String = {
    val factionInHand = if (max) gameState.maxFactionsInHand.head else gameState.minFactionsInHand.head
    gameState.team(max).name + " choose: " + chosenFaction.name + " vs " + gameState.getPutUp(max) + " and " + nonChosenFaction + " vs " + factionInHand
  }

  override def choice: String = chosenFaction.name

  override def choiceDescription: String = "choose"

  override def expectedNumberOfMaxFactionsInHandPostMove(gameState: GameState): Int = 0

  override def expectedNumberOfMinFactionsInHandPreMove(gameState: GameState): Int = 0

  override def expectedNumberOfMinFactionsInHandPostMove(gameState: GameState): Int = 0

  override def expectedNumberOfMaxFactionsInHandPreMove(gameState: GameState): Int = 0

  override def maximizing: Boolean = max

  override def equals(other: Any) = other match {
    case chooseLastMatchups:ChooseLastMatchups => chooseLastMatchups.chosenFaction.equals(chosenFaction) && chooseLastMatchups.nonChosenFaction.equals(nonChosenFaction)
    case _ => false
  }

  override def score(gameState: GameState, minMoves: List[Move]) : Score = {
    gameState.scoreChosenMatchups(minMoves)
  }
}
