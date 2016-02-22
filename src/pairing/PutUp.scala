package pairing

/**
*? Team B captain nominates his/her first player and presents both the player?s lists to the opposing captain.

*? Team A captain then nominates two (2) of his players that are potential opponents for the player. He provides all 4
*lists for the 2 players.

*? Team B captain chooses which player from the 2 that will play against the player he first nominated. The one he does
not choose remains on the table.

*? Team B captain will choose which table the match will be played on.

*? Once the first match up is determined, Team B captain will nominate 2 of his remaining players, Team A captain will
*then choose one of those to face off against the player left on the table from the 1st round pairings.

*? Team B captain continues to choose the table for each match-up.

*? This process continues until all 5 pairings have been done.
  */
class PutUp(val faction: Faction, max: Boolean) extends Move {
  def nextMoves(gameState: GameState) : List[Move] = {
    Pairing.combinations(gameState.factionsInHand(!max)).map { counters: (Faction, Faction) =>
      new Counter(counters, !max)
    }.toList
  }

  def getDescription(gameState: GameState) = gameState.team(max).name + " put up: " + faction.name

  def expectedNumberOfMaxFactionsInHandPreMove(gameState: GameState) : Int = gameState.factionsPreRound - 2 // correct for previous round number
  def expectedNumberOfMinFactionsInHandPreMove(gameState: GameState) : Int = gameState.factionsPreRound - 2 // correct for previous round number
  def expectedNumberOfMaxFactionsInHandPostMove(gameState: GameState) : Int = gameState.factionsPreRound - 1
  def expectedNumberOfMinFactionsInHandPostMove(gameState: GameState) : Int = gameState.factionsPreRound

  override def makeMove(gameState: GameState): Unit = {
    gameState.removeFactionFromHand(faction, max)
    gameState.setPutUp(Some(faction), max)
    gameState.round += 1
  }

  override def undoMove(gameState: GameState): Unit = {
    gameState.addFactionToHand(faction, max)
    gameState.setPutUp(None, max)
    gameState.round -= 1
  }

  override def choiceDescription = "put up"
  override def choice = faction.name

  override def equals(other: Any) = other match {
    case putUp:PutUp => putUp.faction.equals(this.faction) && putUp.maximizing.equals(this.maximizing)
    case _ => false
  }

  def maximizing : Boolean = max

}
