package pairing.wtc2016

import pairing.{InteractivePairing, MatchupEvaluations, Pairing, Team}

object Kamp5 {

  def enemy = Team.create("Switzerland Cheese", "Skarre+Asphyxious3", "Carver+Sturm", "Butcher+Sorcha", "Wurmwood+Kromac2", "Rasheth+Morghoul", null)

  def norwayBlue =
    Team.create("Norway Blue",
    "Endre CoC",
    "Mats Trolls",
    "Leif Khador",
    "Asbjørn Circle",
    "Martin Legion",
    null)

  val scoreArray = Array(
    Array(5,3,5,2,5),
    Array(3,6,4,4,5),
    Array(5,6,4,5,4),
    Array(6,6,7,5,7),
    Array(4,5,3,7,5)
  )

  def pairing: Pairing = {
    val pairing = new Pairing(MatchupEvaluations.fromScoreArray(norwayBlue, enemy, scoreArray))
    pairing
  }

  def main(args: Array[String]): Unit = {
    new InteractivePairing(pairing).run()
  }
}
