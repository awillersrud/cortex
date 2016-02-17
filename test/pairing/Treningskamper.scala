package pairing

object Treningskamper {

  def sweden: Pairing = {
    def etcNor = new Team("Norge",
      new Army("Amund SK") ::
        new Army("Asbjørn DE") ::
        new Army("Christian TK") ::
        new Army("Kenneth HE") ::
        new Army("Martin LZ") ::
        new Army("Trond WE") ::
        new Army("Sverre DoC") ::
        new Army("Øystein DW") ::
        Nil, null)

    def teamSweden = new Team("ETC Sweden",
      new Army("DE") ::
        new Army("HE") ::
        new Army("O&G") ::
        new Army("SK") ::
        new Army("TK") ::
        new Army("VC") ::
        new Army("WoC") ::
        new Army("WE") ::
        Nil, null)

    val battleline = Array(
      Array(12,12,14,8,12,11,13,10),
      Array(10,14,12,6,7,13,5,6),
      Array(9,10,12,11,8,12,9,8),
      Array(9,10,10,9,8,12,14,5),
      Array(11,15,13,11,6,13,7,12),
      Array(12,8,12,12,5,12,0,7),
      Array(10,9,12,7,12,10,8,10),
      Array(14,13,11,12,10,11,13,7)
    )

    val meetingEngagement = Array(
      Array(0,0,1,0,0,0,0,-1),
      Array(0,1,0,-1,0,0,-2,2),
      Array(0,-2,-4,0,2,-1,-3,-1),
      Array(-1,0,-1,0,0,0,0,1),
      Array(-1,0,0,-1,2,-1,-2,1),
      Array(0,0,0,0,0,0,0,0),
      Array(2,1,2,0,0,1,0,1),
      Array(-4,0,-4,0,0,0,-6,0)
    )

    val bloodAndGlory = Array(
      Array(-3,-3,-3,-3,-3,-3,-3,-3),
      Array(0,0,1,0,0,0,2,0),
      Array(1,-1,1,2,0,1,-2,-3),
      Array(-1,0,0,1,0,0,0,0),
      Array(0,2,1,2,1,0,1,0),
      Array(0,0,2,0,0,0,0,0),
      Array(2,2,2,2,2,3,1,1),
      Array(-1,0,-1,0,0,0,0,0)
    )

    val kingOfTheHill = Array(
      Array(0,0,0,0,3,1,0,2),
      Array(0,1,-1,-2,0,-4,1,1),
      Array(-1,-1,-2,-3,-2,-1,-1,-2),
      Array(-1,0,0,0,0,0,0,2),
      Array(0,-1,-2,-3,-2,-1,1,0),
      Array(-2,-2,0,-2,-2,-2,0,0),
      Array(2,0,2,1,1,2,1,2),
      Array(0,1,-2,-2,-2,-2,0,-2)
    )

    val pairing = new Pairing(Scenario.bloodAndGloryFirst, MatchupEvaluations.fromScoreArray(etcNor, teamSweden, battleline, bloodAndGlory, kingOfTheHill, meetingEngagement))
    pairing
  }

  def swedishRebels: Pairing = {
    def etcNor = new Team("Norge",
      new Army("Amund SK") ::
        new Army("Asbjørn DE") ::
        new Army("Christian TK") ::
        new Army("Kenneth HE") ::
        new Army("Martin LZ") ::
        new Army("Trond WE") ::
        new Army("Sverre DoC") ::
        new Army("Øystein DW") ::
        Nil, null)

    def swedishRebelsTeam = new Team("Swedish Rebels",
      new Army("DoC") ::
        new Army("DE") ::
        new Army("DW") ::
        new Army("HE") ::
        new Army("LZ") ::
        new Army("O&G") ::
        new Army("WoC") ::
        new Army("WE") ::
        Nil, null)

    val battleline = Array(
      Array(10,13,7,12,13,13,13,10),
      Array(9,10,7,14,10,10,13,6),
      Array(6,12,8,9,12,12,7,10),
      Array(13,7,8,10,11,10,10,4),
      Array(12,7,13,15,7,13,12,12),
      Array(12,8,10,8,10,10,12,11),
      Array(10,12,10,9,8,12,8,10),
      Array(0,10,9,13,10,7,13,7)
    )

    val meetingEngagement = Array(
      Array(0,1,-1,0,2,2,0,0),
      Array(-4,0,0,1,0,0,-2,2),
      Array(-5,-1,0,1,2,-4,-5,-1),
      Array(0,-1,-1,0,0,-1,0,1),
      Array(-4,-1,0,0,-1,0,-1,1),
      Array(0,0,0,0,0,0,0,0),
      Array(0,3,2,1,0,2,-1,1),
      Array(0,0,0,0,-2,-4,-6,0)
    )

    val bloodAndGlory = Array(
      Array(-3,-3,-3,-3,-3,-3,-3,-3),
      Array(-1,0,0,0,0,1,0,0),
      Array(-3,-1,-2,-2,-1,-1,-1,0),
      Array(0,-1,0,0,0,0,0,0),
      Array(-1,1,-1,2,1,1,0,0),
      Array(0,0,1,0,0,2,0,0),
      Array(0,3,2,2,1,2,2,2),
      Array(0,0,0,0,0,-1,0,-2)
    )

    val kingOfTheHill = Array(
      Array(0,0,0,0,0,0,0,0),
      Array(-1,0,-2,1,0,-1,-2,1),
      Array(-3,-1,-2,-2,1,-2,-1,0),
      Array(2,-1,0,0,0,0,0,2),
      Array(-4,0,2,-1,-1,-2,-4,0),
      Array(-2,-2,-1,-2,-2,0,-2,0),
      Array(0,3,0,0,0,2,0,2),
      Array(0,0,0,1,-2,-2,0,-2)
    )

    val pairing = new Pairing(Scenario.meetingEngagementFirst, MatchupEvaluations.fromScoreArray(etcNor, swedishRebelsTeam, battleline, bloodAndGlory, kingOfTheHill, meetingEngagement))
    pairing
  }

 def finnlandLagsamling: Pairing = {
    def etcNor = new Team("Norge",
      new Army("Amund SK") ::
        new Army("Asbjørn DE") ::
        new Army("Christian TK") ::
        new Army("Kenneth HE") ::
        new Army("Martin LZ") ::
        new Army("Trond WE") ::
        new Army("Sverre DoC") ::
        new Army("Øystein DW") ::
        Nil, null)

    def finnland = new Team("Finnland#lagsamling",
      new Army("BM") ::
        new Army("BR") ::
        new Army("DoC") ::
        new Army("DE") ::
        new Army("LM") ::
        new Army("OK") ::
        new Army("O&G") ::
        new Army("TK") ::
        Nil, null)

    val battleline = Array(
      Array(12,13,14,11,11,12,14,13),
      Array(12,13,12,12,7,14,12,8),
      Array(9,5,12,12,13,11,12,16),
      Array(12,11,11,9,12,8,8,12),
      Array(11,11,13,13,8,12,13,12),
      Array(10,10,12,15,6,15,12,9),
      Array(8,11,11,7,8,12,12,14),
      Array(14,10,8,15,10,12,12,8)
    )

    val meetingEngagement = Array(
      Array(0,2,1,0,2,1,2,0),
      Array(-5,1,-4,-1,-2,-2,0,0),
      Array(-5,2,-3,0,-3,-3,-1,0),
      Array(0,0,0,-1,0,-1,-1,0),
      Array(-2,-1,-2,-1,-2,-2,0,-1),
      Array(0,0,0,0,0,0,0,0),
      Array(-1,1,2,1,1,2,2,3),
      Array(-2,1,-2,-2,-5,0,0,0)
    )

    val bloodAndGlory = Array(
      Array(-3,-3,-3,-3,-3,-3,-3,-3),
      Array(-2,0,-1,0,-1,0,1,0),
      Array(-3,-3,0,-2,0,0,1,0),
      Array(0,0,0,-1,0,0,0,0),
      Array(0,0,1,-1,0,0,1,1),
      Array(0,0,0,0,0,0,2,0),
      Array(0,1,1,2,2,2,2,3),
      Array(-2,0,0,-1,0,0,-1,0)
    )

    val kingOfTheHill = Array(
      Array(3,3,0,0,0,0,0,0),
      Array(-3,0,-1,0,-2,-1,-1,0),
      Array(-3,-2,-2,0,-3,-3,-2,-2),
      Array(0,0,2,-1,0,-1,0,0),
      Array(1,-3,0,-1,-2,-2,-2,0),
      Array(-2,-2,-2,0,-2,-1,0,-2),
      Array(0,0,2,0,0,2,2,3),
      Array(-2,-3,-3,0,-2,-2,-2,-2)
    )

    val pairing = new Pairing(Scenario.battlelineFirst, MatchupEvaluations.fromScoreArray(etcNor, finnland, battleline, bloodAndGlory, kingOfTheHill, meetingEngagement))
    pairing
  }

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
