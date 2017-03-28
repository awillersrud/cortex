package cortex.wtc2016

import cortex.{InteractivePairing, MatchupEvaluations, Pairing, Team}

object Kamp5 {

  def enemy = Team.create("Switzerland Cheese", max = false, player1 = "Skarre+Asphyxious3", player2 = "Carver+Sturm", player3 = "Butcher+Sorcha", player4 = "Wurmwood+Kromac2", player5 = "Rasheth+Morghoul")

  def norwayBlue =
    Team.create("Norway Blue", player1 = "Endre CoC", player2 = "Mats Trolls", player3 = "Leif Khador", player4 = "Asbjørn Circle", player5 = "Martin Legion")

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
