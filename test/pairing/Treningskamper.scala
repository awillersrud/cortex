package pairing

object Treningskamper {

  def lagkamp5: Pairing = {
    def etcNor = new Team("ETC NOR",
      new Army("Amund SK") ::
        new Army("Asbjørn DE") ::
        new Army("Christian TK") ::
        new Army("Jarle HE") ::
        new Army("Martin LZ") ::
        new Army("Stian WE") ::
        new Army("Sverre DoC") ::
        new Army("Øystein DW") ::
        Nil, null)

    def teamAwesome = new Team("Awesome#5",
      new Army("SK") ::
        new Army("HE") ::
        new Army("BM") ::
        new Army("BR") ::
        new Army("OK") ::
        new Army("VC") ::
        new Army("EM") ::
        new Army("DoC") ::
        Nil, null)

    def england6N = new Team("England 6N",
      new Army("WoC") ::
        new Army("") ::
        new Army("") ::
        new Army("") ::
        new Army("") ::
        new Army("") ::
        new Army("") ::
        new Army("") ::
        Nil, null)

    val battleline = Array(
      Array(10,12,12,13,14,11,9,10),
      Array(8,13,14,13,14,13,8,7),
      Array(8,10,12,10,13,11,11,7),
      Array(8,8,12,8,12,13,11,13),
      Array(11,10,12,10,14,13,10,11),
      Array(7,12,13,12,14,13,7,10),
      Array(7,11,8,9,12,11,12,10),
      Array(12,12,14,10,11,11,10,4)
    )

    val meetingEngagement = Array(
      Array(0,0,-1,1,0,0,0,-1),
      Array(0,0,0,0,0,0,0,-1),
      Array(-1,-1,-1,1,-1,1,-2,-3),
      Array(-1,-1,-1,1,0,0,0,0),
      Array(0,0,-1,0,-2,-1,0,-1),
      Array(0,0,0,0,0,0,0,0),
      Array(0,1,-1,0,1,0,1,0),
      Array(0,0,-1,1,0,0,0,-2)
    )

    val bloodAndGlory = Array(
      Array(0,-1,-1,-1,0,-1,-1,-3),
      Array(2,0,0,0,0,0,0,-1),
      Array(3,1,-1,1,1,0,-1,-2),
      Array(2,-1,-1,1,-1,0,0,0),
      Array(2,0,-1,0,-1,0,0,0),
      Array(0,0,0,0,0,0,0,0),
      Array(2,1,0,0,1,1,1,0),
      Array(1,0,0,0,0,0,0,-2)
    )

    val kingOfTheHill = Array(
      Array(0,3,0,0,3,0,0,1),
      Array(-2,0,0,0,0,0,0,-2),
      Array(1,-1,-1,1,1,1,-1,-2),
      Array(-2,-2,-3,1,-2,1,0,1),
      Array(-3,-1,-2,-2,-2,-3,-2,0),
      Array(-2,0,0,-1,0,-2,-2,-2),
      Array(-1,1,1,0,1,1,1,0),
      Array(0,2,-3,-2,0,0,-2,-3)
    )

    val pairing = new Pairing(Scenario.kingOfTheHillFirst, MatchupEvaluations.fromScoreArray(etcNor, teamAwesome, battleline, bloodAndGlory, kingOfTheHill, meetingEngagement))
    pairing
  }
}
