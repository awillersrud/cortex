package cortex.wtc2016

import cortex.{InteractivePairing, MatchupEvaluations, Pairing, Team}

object Kamp2 {

  def enemy = Team.create("Portugal ", max = false, player1 = "Skorne", player2 = "Cryx", player3 = "Cygnar", player4 = "Legion", player5 = "Convergence")

  def norwayBlue =
    Team.create("Norway Blue", player1 = "Endre CoC", player2 = "Mats Trolls", player3 = "Leif Khador", player4 = "Asbjørn Circle", player5 = "Martin Legion")

  val scoreArray = Array(
    Array(3,4,3,4,5),
    Array(5,5,3,3,6),
    Array(6,7,5,6,5),
    Array(6,6,5,6,6),
    Array(5,4,6,3,7)
  )

  def pairing: Pairing = {
    val pairing = new Pairing(MatchupEvaluations.fromScoreArray(norwayBlue, enemy, scoreArray))
    pairing
  }

  def main(args: Array[String]): Unit = {
    new InteractivePairing(pairing).run()
  }

}
