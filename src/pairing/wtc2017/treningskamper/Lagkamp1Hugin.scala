package pairing.wtc2017.treningskamper

import pairing._

object Lagkamp1Hugin {

  def enemy = Team.create("Munin1", "Cygnar", "Circle", "Legion", "Cryx", "Merc", null)

  def firstPlayerTeam = Team.create("Hugin1",
    "Jarle",
    "Asbjørn",
    "Nico",
    "Hans",
    "Kenneth",
    null)

  /*
Jarle (Haley2/Haley3): Cygnar: 0, Circle: -1, Legion: 0, Cryx: 1, Mercenaries: 0
Asbjørn (Wurmwood/Una2): Cygnar: 1, Circle: 0, Legion: 1, Cryx: 1, Mercenaries: 1
Nicholas (Rahn/Kaelyssa): Cygnar: 0, Circle: 1, Legion: 1, Cryx: -1, Mercenaries: 1
Hans (Makeda2/Zaadesh2): Cygnar: 0, Circle: -1, Legion 1, Cryx: -1, Mercenaries: 0
Kenneth (Coven/Skarre1): Cygnar: -1, Circle: -1, Legion: 1, Cryx: 0, Mercenaries: -1
*/

  val scoreArray = Array(
    Array(5,4,5,6,5),
    Array(6,5,6,6,6),
    Array(5,6,6,4,6),
    Array(5,4,6,4,5),
    Array(4,4,6,5,4) // Cygnar er egentlig 4, men typo av meg
  )

  def pairing: Pairing = {
    val pairing = new Pairing(MatchupEvaluations.fromScoreArray(firstPlayerTeam, enemy, scoreArray))
    pairing
  }

    def main(args: Array[String]): Unit = {
      new InteractivePairing(pairing).run()
    }

}
