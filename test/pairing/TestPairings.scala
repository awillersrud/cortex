package pairing

object TestPairings {

  val endre = new Faction("Endre")
  val thomas = new Faction("Thomas")
  val leif = new Faction("Leif")
  val asbjorn = new Faction("Asbj�rn")
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

  val blueVsRedMoves: List[Move] =
    new PutUp(martin, true) ::
      new Counter((gard, jonas), false) ::
      new ChooseAndCounter(gard, jonas, (asbjorn, endre), true) ::
      new ChooseAndCounter(asbjorn, endre, (terje, jarle), false) ::
      new ChooseAndCounter(terje, jarle, (thomas, leif), true) ::
      new ChooseLastMatchups(thomas, leif, false) ::
      Nil

  val blueVsRedExpectedScores = Map[Move, Int](
    new PutUp(martin, true) -> 24,
    new Counter((gard, jonas), false) -> 29,
    new ChooseAndCounter(gard, jonas, (asbjorn, endre), true) -> 27,
    new ChooseAndCounter(asbjorn, endre, (terje, jarle), false) -> 31,
    new ChooseAndCounter(terje, jarle, (thomas, leif), true) -> 31,
    new ChooseLastMatchups(thomas, leif, false) -> 31
  )
}
