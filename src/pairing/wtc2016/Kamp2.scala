package pairing.wtc2016

import pairing.{InteractivePairing, MatchupEvaluations, Pairing, Team}

object Kamp2 {

  def enemy = Team.create("Portugal ", "Skorne", "Cryx", "Cygnar", "Legion", "Convergence", null)

  def norwayBlue =
    Team.create("Norway Blue",
    "Endre CoC",
    "Mats Trolls",
    "Leif Khador",
    "Asbjørn Circle",
    "Martin Legion",
    null)

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
