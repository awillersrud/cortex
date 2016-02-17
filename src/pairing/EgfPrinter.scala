package pairing

import scala.collection.mutable

class EgfPrinter {

  def print(pairing: Pairing) {


  }

  def createNode(pairing: Pairing, previousMove: Move, informationSetId: Int): Node = {
    // move must have already been performed on pairing.gameState

    val player = if (previousMove.maximizing) 2 else 1
    val nextMoves: List[Move] = previousMove.nextMoves(pairing.gameState)
    val nextMoveNames: List[String] = nextMoves.map(_.choice)

    val commonInformationSetId = InformationSet.getNextInformationSetId
    val childNodes = new mutable.MutableList[Node]()
    for (child: Move <- nextMoves) {
      pairing.makeMove(child)
      val childInformationSetId: Int = if (player == 1)
        commonInformationSetId
      else
        InformationSet.getNextInformationSetId
      childNodes.+=:(createNode(pairing, child, childInformationSetId))
      pairing.undoMove(child)
    }

    val outcome =
      if (nextMoves.isEmpty) {
        val score: Score = previousMove.score(pairing.gameState, pairing.moves.toList.reverse)
        new Outcome("", score.minScore, (pairing.maxTeam.armies.size * 20) - score.minScore)
      } else {
        null
      }

    val informationSet = if (nextMoves.nonEmpty)
      new InformationSet(informationSetId, nextMoves.head.getClass.getSimpleName, nextMoveNames)
    else
      null

    new Node(previousMove.getClass.getSimpleName, player, informationSet, outcome, childNodes.toList)
  }

  def printEgfMove(pairing: Pairing): Unit = {
    val node: Node = createNode(pairing, pairing.moves.head, InformationSet.getNextInformationSetId)
    node.print()
  }

  class Node(name: String, player: Int, informationSet: InformationSet, outcome: Outcome, children: List[Node]) {
    def print(): Unit = {
      children match {
        case Nil =>
          Console.println("t \"\" " + outcome.toString)
        case _ =>
          Console.println("p \"\" " + player + " " + informationSet.toString + " " + (if (outcome == null) "0" else outcome.toString))
          children.foreach(_.print())
      }
    }
  }

  object InformationSet {
    var nextInformationSetId = 0
    def getNextInformationSetId: Int = {
      nextInformationSetId = nextInformationSetId + 1
      nextInformationSetId
    }
  }
  class InformationSet(id: Int, description: String, nextMoves: List[String]) {
    override def toString = {
      id + " \"" + description + "\" { " + nextMoves.map("\"" + _ + "\"").mkString(" ") + " }"
    }
  }

  object Outcome {
    var nextOutcomeId = 0
    def getNextOutcomeId = {
      nextOutcomeId = nextOutcomeId + 1
      nextOutcomeId
    }
  }
  class Outcome(description: String, maxValue: Int, minValue: Int) {
    
    val id = Outcome.getNextOutcomeId
    
    override def toString = {
      id + " \"" + description + "\" {" + maxValue + " " + minValue + " }"
    }
  }

}
