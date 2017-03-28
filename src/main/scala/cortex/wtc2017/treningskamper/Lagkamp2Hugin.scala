package cortex.wtc2017.treningskamper

import cortex._

object Lagkamp2Hugin {

  def enemy = Team.create("Munin2", max = false, player1 = "Denny1/Coven", player2 = "WW/Una", player3 = "Sev2/HR", player4 = "Abby2/Lylyth3", player5 = "Issyria/Rahn")

  def firstPlayerTeam = Team.create("Hugin2", player1 = "Doomy3/Ragnor", player2 = "Rahn/Helynna", player3 = "Denny1/Coven", player4 = "Haley2/Haley3", player5 = "Amon/HR")

  val scoreArray = Array(
    Array(60,49,60,40,51),
    Array(60,29,60,60,51),
    Array(50,30,59,60,51),
    Array(60,49,51,50,60),
    Array(60,50,50,49,51)
  )

  def pairing: Pairing = {
    val pairing = new Pairing(MatchupEvaluations.fromScoreArray(firstPlayerTeam, enemy, scoreArray))
    pairing
  }

    def main(args: Array[String]): Unit = {
      new InteractivePairing(pairing).run()
    }

}
