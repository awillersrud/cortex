package pairing

object Lagkamper {

  def norwayBlue = new Team("Norway Blue",
    new Faction("Endre CoC") ::
      new Faction("Thomas Cygnar") ::
      new Faction("Leif Cryx") ::
      new Faction("Asbjørn Circle") ::
      new Faction("Martin Legion") ::
      Nil, null)

  def norwayRed = new Team("Norway Red",
    new Faction("Gard Legion") ::
      new Faction("Terje Khador") ::
      new Faction("Jonas Cryx") ::
      new Faction("Jarle Cygnar") ::
      new Faction("Kuba Trolls") ::
      Nil, null)

  val scoreArray = Array(
    Array(5,6,3,5,6),
    Array(3,8,4,7,7),
    Array(3,7,6,6,6),
    Array(7,3,6,4,4,5),
    Array(6,8,6,6,6)
  )

  def norwayBlueVsRed: Pairing = {
    val pairing = new Pairing(MatchupEvaluations.fromScoreArray(norwayBlue, norwayRed, scoreArray))
    pairing
  }

}
