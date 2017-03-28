package cortex

import cortex.moves._

object TestPairings {

  val endre = new Faction("Endre")
  val thomas = new Faction("Thomas")
  val leif = new Faction("Leif")
  val asbjorn = new Faction("Asbjørn")
  val martin = new Faction("Martin")

  def norwayBlue = new Team("Blue", true, endre :: thomas :: leif :: asbjorn :: martin :: Nil)

  val gard = new Faction("Gard")
  val terje = new Faction("Terje")
  val jonas = new Faction("Jonas")
  val jarle = new Faction("Jarle")
  val kuba = new Faction("Kuba")

  def norwayRed = new Team("Red", false, gard :: terje :: jonas :: jarle :: kuba :: Nil)

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
    new PutUp(martin, norwayBlue) ::
      new Counter((gard, jonas), norwayRed) ::
      new ChooseAndCounter(gard, jonas, (asbjorn, endre), norwayBlue) ::
      new ChooseAndCounter(asbjorn, endre, (terje, jarle), norwayRed) ::
      new ChooseAndCounter(terje, jarle, (thomas, leif), norwayBlue) ::
      new ChooseLastMatchups(thomas, leif, norwayRed) ::
      Nil

  val blueVsRedExpectedScores = Map[Move, Int](
    new PutUp(martin, norwayBlue) -> 24,
    new Counter((gard, jonas), norwayRed) -> 29,
    new ChooseAndCounter(gard, jonas, (asbjorn, endre), norwayBlue) -> 27,
    new ChooseAndCounter(asbjorn, endre, (terje, jarle), norwayRed) -> 31,
    new ChooseAndCounter(terje, jarle, (thomas, leif), norwayBlue) -> 31,
    new ChooseLastMatchups(thomas, leif, norwayRed) -> 31
  )
}
