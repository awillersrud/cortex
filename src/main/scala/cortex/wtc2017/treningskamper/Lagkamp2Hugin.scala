package cortex.wtc2017.treningskamper

import cortex._

object Lagkamp2Hugin {

  def enemy = Team.create("Munin2", "Denny1/Coven", "WW/Una", "Sev2/HR", "Abby2/Lylyth3", "Issyria/Rahn", null)

  def firstPlayerTeam = Team.create("Hugin2",
    "Doomy3/Ragnor",
    "Rahn/Helynna",
    "Denny1/Coven",
    "Haley2/Haley3",
    "Amon/HR",
    null)

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
