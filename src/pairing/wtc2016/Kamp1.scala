package pairing.wtc2016

import pairing._

object Kamp1 {

  def enemy = Team.create("USA White", "Skorne", "Retribution", "Legion", "Circle", "Cygnar", null)

  def norwayBlue =
    Team.create("Norway Blue",
    "Endre CoC",
    "Mats Trolls",
    "Leif Khador",
    "Asbjørn Circle",
    "Martin Legion",
    null)

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
