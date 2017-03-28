package cortex.wtc2016

import cortex.{InteractivePairing, MatchupEvaluations, Pairing, Team}

object Kamp6 {

  def enemy = Team.create("England Lions", max = false, player1 = "Caine2+Haley2", player2 = "Baldur1+Baldur2", player3 = "Lucant+Dir", player4 = "Grim2+Ragnor1", player5 = "Siege1+Stryker2")

  def norwayBlue =
    Team.create("Norway Blue", player1 = "Endre CoC", player2 = "Mats Trolls", player3 = "Leif Khador", player4 = "Asbjørn Circle", player5 = "Martin Legion")

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
