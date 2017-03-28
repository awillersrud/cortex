package cortex.wtc2016

import cortex.{InteractivePairing, MatchupEvaluations, Pairing, Team}

object Kamp3 {

  def enemy = Team.create("Poland Marmots", max = false, "Merc Ossrum/Bart", "Merc Gorten/Magnus", "Retribution", "Cryx", "Khador")

  def norwayBlue =
    Team.create("Norway Blue", max = true,
    "Endre CoC",
    "Mats Trolls",
    "Leif Khador",
    "Asbjørn Circle",
    "Martin Legion")

  val scoreArray = Array(
    Array(5,5,3,3,3),
    Array(4,4,3,5,3),
    Array(6,4,4,6,4),
    Array(4,5,5,5,7),
    Array(3,4,5,2,4)
  )

  def pairing: Pairing = {
    val pairing = new Pairing(MatchupEvaluations.fromScoreArray(norwayBlue, enemy, scoreArray))
    pairing
  }

  def main(args: Array[String]): Unit = {
    new InteractivePairing(pairing).run()
  }

}
