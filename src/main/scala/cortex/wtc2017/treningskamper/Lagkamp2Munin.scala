package cortex.wtc2017.treningskamper

import cortex._

object Lagkamp2Munin {

  def enemy = Team.create("Hugin2", "Doomy3/Ragnor", "Denny1/Coven", "Haley2/Haley3", "Amon/HR", "Rahn/Helynna", null)

  def firstPlayerTeam =
    Team.create("Munin2",
      "WW/Una",
      "Issyria/Rahn",
      "Sev2/HR",
      "Abby2/Lylyth3",
      "Denny1/Coven",
    null)

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
