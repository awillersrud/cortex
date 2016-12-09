package pairing

object Lagkamper {

  def enemy = Team.create("Norway Red", "Gard Legion", "Terje Khador", "Jonas Cryx", "Jarle Cygnar", "Kuba Trolls", null)

  def norwayBlue =
    Team.create("Norway Blue",
    "Endre CoC",
    "Mats Trolls",
    "Leif Khador",
    "Asbjørn Circle",
    "Martin Legion",
    null)

  val scoreArray = Array(
    Array(5,6,3,5,6),
    Array(3,8,4,7,7),
    Array(3,7,6,6,6),
    Array(7,3,6,4,4),
    Array(6,8,6,6,6)
  )

  def pairing: Pairing = {
    val pairing = new Pairing(MatchupEvaluations.fromScoreArray(norwayBlue, enemy, scoreArray))
    pairing
  }

}
