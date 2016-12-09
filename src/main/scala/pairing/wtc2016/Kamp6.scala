package pairing.wtc2016

import pairing.{InteractivePairing, MatchupEvaluations, Pairing, Team}

object Kamp6 {

  def enemy = Team.create("England Lions", "Caine2+Haley2", "Baldur1+Baldur2", "Lucant+Dir", "Grim2+Ragnor1", "Siege1+Stryker2", null)

  def norwayBlue =
    Team.create("Norway Blue",
    "Endre CoC",
    "Mats Trolls",
    "Leif Khador",
    "Asbjørn Circle",
    "Martin Legion",
    null)

  val scoreArray = Array(
    Array(4,3,6,3,5),
    Array(4,4,6,6,5),
    Array(5,3,4,6,4),
    Array(6,3,6,6,3),
    Array(6,5,6,6,4)
  )

  def pairing: Pairing = {
    val pairing = new Pairing(MatchupEvaluations.fromScoreArray(norwayBlue, enemy, scoreArray))
    pairing
  }

  def main(args: Array[String]): Unit = {
    new InteractivePairing(pairing).run()
  }

}
