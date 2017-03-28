package cortex.wtc2016

import cortex._

object Kamp1 {

  def enemy = Team.create("USA White", max = false, player1 = "Skorne", player2 = "Retribution", player3 = "Legion", player4 = "Circle", player5 = "Cygnar")

  def norwayBlue =
    Team.create("Norway Blue", max = true, player1 = "Endre CoC", player2 = "Mats Trolls", player3 = "Leif Khador", player4 = "Asbjørn Circle", player5 = "Martin Legion")

  val scoreArray = Array(
    Array(3,4,4,3,3),
    Array(6,4,5,6,5),
    Array(4,5,6,4,6),
    Array(5,6,4,4,6),
    Array(6,5,4,5,4)
  )

  def pairing: Pairing = {
    val pairing = new Pairing(MatchupEvaluations.fromScoreArray(norwayBlue, enemy, scoreArray))
    pairing
  }

    def main(args: Array[String]): Unit = {
      new InteractivePairing(Kamp1.pairing).run()
    }

}
