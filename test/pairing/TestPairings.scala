package pairing

object TestPairings {

  val endre = new Faction("Endre")
  val thomas = new Faction("Thomas")
  val leif = new Faction("Leif")
  val asbjorn = new Faction("Asbjørn")
  val martin = new Faction("Martin")

  def norwayBlue = new Team("Blue", endre :: thomas :: leif :: asbjorn :: martin :: Nil, null)

  val gard = new Faction("Gard")
  val terje = new Faction("Terje")
  val jonas = new Faction("Jonas")
  val jarle = new Faction("Jarle")
  val kuba = new Faction("Kuba")

  def norwayRed = new Team("Red", gard :: terje :: jonas :: jarle :: kuba :: Nil, null)

  val scoreArray = Array(
    Array(5,6,3,5,6),
    Array(3,8,4,7,7),
    Array(3,7,6,6,6),
    Array(7,3,6,4,4,5),
    Array(6,8,4,6,2)
  )

  def norwayBlueVsRed: Pairing = {
    val pairing = new Pairing(MatchupEvaluations.fromScoreArray(norwayBlue, norwayRed, scoreArray))
    pairing
  }
}
