package pairing.wtc2017.treningskamper

import pairing._

object Lagkamp1Munin {

  def enemy = Team.create("Hugin1", "Jarle", "Asbjørn", "Nico", "Hans", "Kenneth", null)

  def firstPlayerTeam =
    Team.create("Munin1",
      "Jonas",
      "Cuba",
      "Sverre",
      "Toro",
      "Stian",
    null)

  /*
Spiller......Jarle......Asbjørn.....Nico....Hans....Kenneth
Jonas...... ...-1...........1...........2.........0...........1.....
Cuba	.........-1...........1...........2.........1...........1.....
Sverre........-2...........-1..........2..........2...........1....
Toro..........-1...........-2..........1..........1...........2....
Stian	.........0............0...........-1........0...........1....
   */

  val scoreArray = Array(
    Array(4,6,7,5,6),
    Array(4,6,7,6,6),
    Array(3,4,7,7,6),
    Array(4,3,6,6,7),
    Array(5,5,4,5,6)
  )

  def pairing: Pairing = {
    val pairing = new Pairing(MatchupEvaluations.fromScoreArray(firstPlayerTeam, enemy, scoreArray))
    pairing
  }

    def main(args: Array[String]): Unit = {
      new InteractivePairing(pairing).run()
    }

}
