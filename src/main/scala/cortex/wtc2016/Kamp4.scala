package cortex.wtc2016

import cortex.{InteractivePairing, MatchupEvaluations, Pairing, Team}

object Kamp4 {

  def enemy = Team.create("Australia Wallaby", max = false, "Cryx", "Legion", "Reclaimer/Reznik", "Minions", "Harby/Sev2")

  def norwayBlue =
    Team.create("Norway Blue", max = true,
    "Endre CoC",
    "Mats Trolls",
    "Leif Khador",
    "Asbjørn Circle",
    "Martin Legion"
    )

  val scoreArray = Array(
    Array(4,5,5,1,5),
    Array(4,6,3,5,6),
    Array(7,7,6,5,4),
    Array(6,6,6,5,4),
    Array(4,4,7,3,7)
  )

  def pairing: Pairing = {
    val pairing = new Pairing(MatchupEvaluations.fromScoreArray(norwayBlue, enemy, scoreArray))
    pairing
  }

  def main(args: Array[String]): Unit = {
    new InteractivePairing(pairing).run()
  }

}
