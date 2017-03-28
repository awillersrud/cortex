package cortex.wtc2017.treningskamper

import cortex._

object Lagkamp2Munin {

  def enemy = Team.create("Hugin2", max = false, player1 = "Doomy3/Ragnor", player2 = "Denny1/Coven", player3 = "Haley2/Haley3", player4 = "Amon/HR", player5 = "Rahn/Helynna")

  def firstPlayerTeam =
    Team.create("Munin2", player1 = "WW/Una", player2 = "Issyria/Rahn", player3 = "Sev2/HR", player4 = "Abby2/Lylyth3", player5 = "Denny1/Coven")

  /*
  	Asbjørn	Nico	Christian	Martin	Ole
Trolls (d3, Ragnor)	60	50	61	55	59
Cryx (Coven, D1)  	59	49	59	50	50
Cygnar (H2, H3)	    61	51	50	35	40
Menoth (HR, Amon)  	50	61	49	40	51
Ret (Hel, Rahn	    70	60	60	50	51
   */

  val scoreArray = Array(
    Array(60,59,61,50,70),
    Array(50,49,51,61,60),
    Array(61,59,50,49,60),
    Array(55,50,35,40,50),
    Array(59,50,40,51,51)
  )

  def pairing: Pairing = {
    val pairing = new Pairing(MatchupEvaluations.fromScoreArray(firstPlayerTeam, enemy, scoreArray))
    pairing
  }

    def main(args: Array[String]): Unit = {
      new InteractivePairing(pairing).run()
    }

}
