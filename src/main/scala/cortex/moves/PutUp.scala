package cortex.moves

import cortex._

/**
  * ? Team B captain nominates his/her first player and presents both the player?s lists to the opposing captain.
 *
 *? Team A captain then nominates two (2) of his players that are potential opponents for the player. He provides all 4
*lists for the 2 players.
 *
 *? Team B captain chooses which player from the 2 that will play against the player he first nominated. The one he does
*not choose remains on the table.
 *
 *? Team B captain will choose which table the match will be played on.
 *
 *? Once the first match up is determined, Team B captain will nominate 2 of his remaining players, Team A captain will
*then choose one of those to face off against the player left on the table from the 1st round pairings.
 *
 *? Team B captain continues to choose the table for each match-up.
 *
 *? This process continues until all 5 pairings have been done.
  */
class PutUp(val faction: Faction, team: Team) extends Move {
  def nextMoves(gameState: GameState) : List[Move] = {
    Pairing.combinations(gameState.factionsInHand(!team.max)).map { counters: (Faction, Faction) =>
      new Counter(counters, gameState.team(!maximizing))
    }.toList
  }

  override def makeMove(gameState: GameState): Unit = {
    gameState.removeFactionFromHand(faction, team.max)
    gameState.setPutUp(Some(faction), team.max)
    gameState.round += 1
  }

  override def undoMove(gameState: GameState): Unit = {
    gameState.addFactionToHand(faction, team.max)
    gameState.setPutUp(None, team.max)
    gameState.round -= 1
  }

  override def choiceDescription = "setter ut"
  override def choice = faction.name

  override def equals(other: Any) = other match {
    case putUp:PutUp => putUp.faction.equals(this.faction) && putUp.maximizing.equals(this.maximizing)
    case _ => false
  }

  def maximizing : Boolean = team.max

}
