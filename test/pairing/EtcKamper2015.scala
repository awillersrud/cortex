package pairing

object EtcKamper2015 {

  def belgium: Pairing = {
    def etcNor = new Team("Norge",
      new Army("Amund SK") ::
        new Army("Asbjørn DE") ::
        new Army("Christian TK") ::
        new Army("Jarle HE") ::
        new Army("Martin LZ") ::
        new Army("Stian WE") ::
        new Army("Sverre DoC") ::
        new Army("Øystein DW") ::
        Nil, null)

    def teamBelgium = new Team("ETC Belgium",
      new Army("DoC") ::
        new Army("DE") ::
        new Army("DW") ::
        new Army("HE") ::
        new Army("LZ") ::
        new Army("SK") ::
        new Army("VC") ::
        new Army("WE") ::
        Nil, null)

    val battleline = Array(
      Array(10,12,7,10,12,8,11,11),
      Array(7,15,8,13,13,11,13,4),
      Array(6,13,11,11,12,7,11,10),
      Array(13,7,11,9,8,10,12,8),
      Array(12,14,12,12,11,11,12,11),
      Array(6,13,12,12,12,8,10,11),
      Array(10,7,12,8,10,13,9,8),
      Array(0,13,11,12,13,13,10,7)
    )

    val meetingEngagement = Array(
      Array(0,-2,0,0,0,0,0,0),
      Array(-3,0,0,-1,0,0,-3,2),
      Array(-4,-1,1,-2,-2,0,-1,1),
      Array(0,-1,1,-1,-1,0,0,0),
      Array(-3,-1,0,0,1,-1,0,0),
      Array(0,0,0,0,0,0,0,0),
      Array(0,-1,2,-1,1,1,0,3),
      Array(0,-3,0,0,-1,-3,-6,0)
    )

    val bloodAndGlory = Array(
      Array(-3,-3,-3,-3,-3,-3,-3,-3),
      Array(-1,0,0,1,0,0,-1,0),
      Array(-3,-1,1,-2,-2,-2,0,0),
      Array(0,-1,0,-1,-1,0,0,0),
      Array(-1,1,1,1,2,2,1,1),
      Array(0,0,0,0,0,3,0,0),
      Array(0,1,0,-2,2,-2,0,1),
      Array(0,0,0,0,0,0,-1,-2)
    )

    val kingOfTheHill = Array(
      Array(2,3,0,0,0,0,0,2),
      Array(-2,-1,-2,0,-3,-3,-4,1),
      Array(-3,0,1,-2,-2,-3,-1,0),
      Array(1,-2,2,-2,-2,-3,1,0),
      Array(-4,0,2,-3,0,-3,-2,0),
      Array(-2,0,0,0,0,0,-2,0),
      Array(0,-2,1,2,-2,3,1,2),
      Array(0,-2,0,0,-1,-1,-3,-3)
    )

    val pairing = new Pairing(Scenario.battlelineFirst, MatchupEvaluations.fromScoreArray(etcNor, teamBelgium, battleline, bloodAndGlory, kingOfTheHill, meetingEngagement))
    pairing
  }

  def slag1_NorthernIreland: Pairing = {
    def etcNor = new Team("Norge",
      new Army("Amund SK") ::
        new Army("Asbjørn DE") ::
        new Army("Christian TK") ::
        new Army("Jarle HE") ::
        new Army("Martin LZ") ::
        new Army("Stian WE") ::
        new Army("Sverre DoC") ::
        new Army("Øystein DW") ::
        Nil, null)

    def opponentTeam = new Team("ETC Northern Ireland",
      new Army("BM") ::
        new Army("DoC") ::
        new Army("DE") ::
        new Army("EM") ::
        new Army("HE") ::
        new Army("VC") ::
        new Army("WoC") ::
        new Army("WE") ::
        Nil, null)

    val battleline = Array(
      Array(12,11,14,12,12,9,13,9),
      Array(11,9,11,8,14,12,6,11),
      Array(8,6,12,13,11,13,10,9),
      Array(12,12,8,8,12,13,11,10),
      Array(11,14,10,10,15,12,9,13),
      Array(9,5,10,10,15,11,8,14),
      Array(8,11,12,13,12,13,12,7),
      Array(11,0,12,10,15,11,11,8)
    )

    val meetingEngagement = Array(
      Array(0,0,0,0,0,0,0,0),
      Array(-4,-4,0,-2,0,-3,-2,1),
      Array(-2,-2,-1,-2,-2,-1,-4,1),
      Array(-2,0,-1,0,0,0,0,0),
      Array(-2,-1,0,-2,0,0,-3,0),
      Array(0,-2,0,0,0,0,0,0),
      Array(-1,0,2,0,3,1,-1,1),
      Array(-7,0,-5,-6,-1,-6,-6,0)
    )

    val bloodAndGlory = Array(
      Array(-3,-3,-3,-3,-3,-3,-3,-3),
      Array(-1,-1,0,0,0,-1,-1,0),
      Array(-3,-3,-1,-2,-2,-1,-2,0),
      Array(-1,0,-1,0,0,0,0,0),
      Array(0,-1,-1,1,1,1,1,1),
      Array(0,0,0,1,0,0,0,0),
      Array(1,1,2,1,2,1,1,0),
      Array(-1,0,-1,0,0,-1,0,-2)
    )

    val kingOfTheHill = Array(
      Array(2,1,2,0,0,0,0,2),
      Array(-3,-2,0,-2,0,-3,0,1),
      Array(-3,-3,0,-2,-2,-1,-2,0),
      Array(-1,0,-1,-2,0,1,0,1),
      Array(-3,-1,-1,-2,-2,-2,0,0),
      Array(-2,-2,0,-2,0,-2,0,0),
      Array(-2,2,2,1,2,1,1,-2),
      Array(-3,0,-1,-3,-1,-3,-2,-3)
    )

    val pairing = new Pairing(Scenario.battlelineFirst, MatchupEvaluations.fromScoreArray(etcNor, opponentTeam, battleline, bloodAndGlory, kingOfTheHill, meetingEngagement))
    pairing
  }

  def slag2_Singapore: Pairing = {
    def etcNor = new Team("Norge",
      new Army("Amund SK") ::
        new Army("Asbjørn DE") ::
        new Army("Christian TK") ::
        new Army("Jarle HE") ::
        new Army("Martin LZ") ::
        new Army("Stian WE") ::
        new Army("Sverre DoC") ::
        new Army("Øystein DW") ::
        Nil, null)

    def opponentTeam = new Team("ETC Singapore",
      new Army("BM") ::
        new Army("DoC") ::
        new Army("DE") ::
        new Army("EM") ::
        new Army("HE") ::
        new Army("SK") ::
        new Army("VC") ::
        new Army("WoC") ::
        Nil, null)

    val battleline = Array(
      Array(10,12,11,8,9,10,10,13),
      Array(11,10,16,7,13,9,11,5),
      Array(6,13,14,8,10,13,10,11),
      Array(10,11,7,7,8,11,12,12),
      Array(11,12,14,6,11,9,14,7),
      Array(10,6,17,8,12,10,13,4),
      Array(7,10,8,12,8,12,12,12),
      Array(10,5,14,8,13,12,11,6)
    )

    val meetingEngagement = Array(
      Array(0,0,0,0,0,0,0,0),
      Array(-4,-5,0,-2,-2,0,-1,-1),
      Array(-4,0,-1,-4,-2,0,-1,-3),
      Array(-2,0,1,0,-1,0,0,0),
      Array(-2,-3,0,-1,-1,-1,0,-3),
      Array(-2,-1,0,0,0,0,0,-1),
      Array(-1,0,0,0,0,2,2,0),
      Array(-6,-2,-2,-6,0,-2,-1,-3)
    )

    val bloodAndGlory = Array(
      Array(-3,-3,-3,-3,-3,-3,-3,-3),
      Array(-1,-1,0,0,0,0,-1,0),
      Array(-3,0,-1,-2,-2,-2,-3,-3),
      Array(-1,0,-1,0,0,0,0,0),
      Array(-1,0,0,0,1,1,1,1),
      Array(0,0,0,1,0,0,0,0),
      Array(0,0,1,0,1,0,2,2),
      Array(-1,-2,-1,0,0,0,-1,-1)
    )

    val kingOfTheHill = Array(
      Array(2,0,0,0,0,0,0,0),
      Array(-3,-2,-1,-2,-1,-2,-3,0),
      Array(-3,-3,0,-2,-2,-3,-1,-3),
      Array(-1,0,-1,0,-2,-1,1,0),
      Array(0,-2,-1,-2,-3,-3,-2,0),
      Array(-2,-2,0,-1,0,0,0,-1),
      Array(-1,0,2,0,-1,1,2,2),
      Array(-3,-2,-1,-3,0,-1,-2,-2)
    )

    val pairing = new Pairing(Scenario.meetingEngagementFirst, MatchupEvaluations.fromScoreArray(etcNor, opponentTeam, battleline, bloodAndGlory, kingOfTheHill, meetingEngagement))
    pairing
  }

  def slag3_Austria: Pairing = {
    def etcNor = new Team("Norge",
      new Army("Amund SK") ::
        new Army("Asbjørn DE") ::
        new Army("Christian TK") ::
        new Army("Jarle HE") ::
        new Army("Martin LZ") ::
        new Army("Stian WE") ::
        new Army("Sverre DoC") ::
        new Army("Øystein DW") ::
        Nil, null)

    def opponentTeam = new Team("ETC ???",
      new Army("DoC") ::
        new Army("DW") ::
        new Army("HE") ::
        new Army("LZ") ::
        new Army("SK") ::
        new Army("TK") ::
        new Army("VC") ::
        new Army("WE") ::
        Nil, null)

    val battleline = Array(
      Array(8,7,10,10,6,10,11,10),
      Array(13,8,13,9,7,8,11,14),
      Array(0,11,11,11,11,11,12,9),
      Array(13,10,7,8,10,12,12,10),
      Array(12,12,12,8,10,12,13,12),
      Array(12,10,13,11,8,10,12,15),
      Array(10,13,12,6,7,13,12,8),
      Array(12,10,12,11,12,13,11,13)
    )

    val meetingEngagement = Array(
      Array(0,0,0,0,0,0,0,0),
      Array(-3,0,-1,0,0,0,0,1),
      Array(0,1,-2,-2,-3,0,-3,1),
      Array(0,1,-1,-1,0,0,0,0),
      Array(0,0,-1,-1,0,0,0,0),
      Array(0,0,0,0,0,0,-1,0),
      Array(0,2,1,1,-1,2,1,2),
      Array(-3,0,0,-3,-2,-1,-6,1)
    )

    val bloodAndGlory = Array(
      Array(-3,-3,-3,-3,-3,-3,-3,-3),
      Array(-1,0,1,0,1,0,-1,1),
      Array(0,1,-2,-2,-2,0,0,-1),
      Array(0,0,0,-1,1,0,0,0),
      Array(1,1,1,0,3,1,1,2),
      Array(2,0,0,0,0,0,0,0),
      Array(0,2,2,1,-2,2,1,1),
      Array(-1,0,0,0,0,0,-1,0)
    )

    val kingOfTheHill = Array(
      Array(0,0,0,0,0,1,0,2),
      Array(-1,-2,-1,-2,-2,0,-3,1),
      Array(0,1,-2,-1,-3,0,-2,-2),
      Array(1,1,-1,-3,-3,0,1,0),
      Array(0,2,-3,-2,-3,0,0,0),
      Array(0,-2,0,-2,-2,-2,-3,0),
      Array(0,2,0,-2,0,3,2,2),
      Array(-2,0,0,-2,-1,0,-2,1)
    )

    val pairing = new Pairing(Scenario.bloodAndGloryFirst, MatchupEvaluations.fromScoreArray(etcNor, opponentTeam, battleline, bloodAndGlory, kingOfTheHill, meetingEngagement))
    pairing
  }

  def slag4_Russia: Pairing = {
    def etcNor = new Team("Norge",
      new Army("Amund SK") ::
        new Army("Asbjørn DE") ::
        new Army("Christian TK") ::
        new Army("Jarle HE") ::
        new Army("Martin LZ") ::
        new Army("Stian WE") ::
        new Army("Sverre DoC") ::
        new Army("Øystein DW") ::
        Nil, null)

    def opponentTeam = new Team("Russia",
      new Army("BR") ::
        new Army("DW") ::
        new Army("HE") ::
        new Army("LZ") ::
        new Army("TK") ::
        new Army("VC") ::
        new Army("WoC") ::
        new Army("WE") ::
        Nil, null)

    val battleline = Array(
      Array(11,6,10,11,11,10,11,9),
      Array(7,8,12,12,7,9,6,11),
      Array(0,10,12,12,8,12,12,8),
      Array(8,7,7,9,10,12,11,7),
      Array(7,12,12,12,7,13,8,13),
      Array(10,11,11,11,7,11,8,15),
      Array(12,13,12,8,12,11,12,10),
      Array(9,10,13,11,11,4,11,7)
    )

    val meetingEngagement = Array(
      Array(0,0,0,0,0,0,0,0),
      Array(1,0,1,0,0,-3,-2,2),
      Array(-3,1,-2,-2,0,-1,-2,1),
      Array(1,0,-1,-2,1,0,0,0),
      Array(0,0,-1,-1,0,0,-3,0),
      Array(0,-2,0,0,-5,0,0,0),
      Array(2,2,2,1,3,1,2,2),
      Array(-6,0,-1,0,-1,-2,-6,0)
    )

    val bloodAndGlory = Array(
      Array(-3,-3,-3,-3,-3,-3,-3,-3),
      Array(0,0,0,0,0,-1,-1,0),
      Array(-3,1,-2,-2,0,-1,-2,1),
      Array(0,0,-1,-1,1,0,0,0),
      Array(0,1,0,1,0,1,2,1),
      Array(0,0,0,0,0,0,0,0),
      Array(2,1,2,1,3,1,2,2),
      Array(-1,0,0,0,0,-1,0,-1)
    )

    val kingOfTheHill = Array(
      Array(2,0,2,0,2,1,0,2),
      Array(-2,-2,1,-2,0,-3,-1,1),
      Array(-3,1,-2,-2,0,-1,-1,1),
      Array(-1,-2,-2,-2,0,1,0,-2),
      Array(-2,2,-2,-4,0,-2,0,0),
      Array(-2,-3,-3,-3,-2,-3,0,0),
      Array(2,2,1,-2,3,2,1,2),
      Array(-3,0,0,-1,0,-1,-2,-2)
    )

    val pairing = new Pairing(Scenario.kingOfTheHillFirst, MatchupEvaluations.fromScoreArray(etcNor, opponentTeam, battleline, bloodAndGlory, kingOfTheHill, meetingEngagement))
    pairing
  }

  def slag5_Australia: Pairing = {
    def etcNor = new Team("Norge",
      new Army("Amund SK") ::
        new Army("Asbjørn DE") ::
        new Army("Christian TK") ::
        new Army("Jarle HE") ::
        new Army("Martin LZ") ::
        new Army("Stian WE") ::
        new Army("Sverre DoC") ::
        new Army("Øystein DW") ::
        Nil, null)

    def opponentTeam = new Team("Australia",
      new Army("DoC") ::
        new Army("DE") ::
        new Army("HE") ::
        new Army("OK") ::
        new Army("SK") ::
        new Army("TK") ::
        new Army("VC") ::
        new Army("WE") ::
        Nil, null)

    val battleline = Array(
      Array(10,12,11,12,7,11,12,11),
      Array(8,12,13,13,9,6,11,9),
      Array(5,13,6,12,9,7,13,12),
      Array(11,7,9,7,10,9,12,8),
      Array(12,14,12,15,11,8,13,11),
      Array(6,15,12,13,10,7,12,15),
      Array(10,7,11,11,12,12,10,11),
      Array(0,13,14,11,13,8,5,11)
    )

    val meetingEngagement = Array(
      Array(0,-1,0,0,0,0,0,0),
      Array(-3,0,-5,-2,-1,-3,-3,1),
      Array(-2,1,-1,-3,-2,0,1,1),
      Array(0,-2,-1,-1,0,-3,0,-1),
      Array(-3,0,-1,0,0,0,0,0),
      Array(-2,0,-5,-4,-1,-3,-2,0),
      Array(0,1,-1,2,0,1,0,2),
      Array(0,-3,0,-1,-1,-3,-2,0)
    )

    val bloodAndGlory = Array(
      Array(-3,-3,-3,-3,-3,-3,-3,-3),
      Array(-1,0,0,0,0,0,-1,0),
      Array(-3,1,-2,-3,0,0,0,0),
      Array(0,-1,-1,0,1,-1,0,0),
      Array(-1,1,-1,1,1,0,1,1),
      Array(0,0,0,1,0,0,0,0),
      Array(0,0,2,2,0,1,0,0),
      Array(0,-1,0,0,0,0,-1,0)
    )

    val kingOfTheHill = Array(
      Array(2,2,0,1,0,2,0,1),
      Array(-2,0,-1,-1,-2,-1,-3,0),
      Array(-3,-2,-2,-3,-3,0,-1,1),
      Array(-1,-1,-2,-1,-3,-3,0,-2),
      Array(-4,-1,-3,-2,-3,0,-2,0),
      Array(-2,0,-2,-2,-2,-3,-3,0),
      Array(0,0,2,2,0,1,1,2),
      Array(0,-1,-1,-1,0,0,-2,-2)
    )

    val pairing = new Pairing(Scenario.battlelineFirst, MatchupEvaluations.fromScoreArray(etcNor, opponentTeam, battleline, bloodAndGlory, kingOfTheHill, meetingEngagement))
    pairing
  }

  def slag6_Poland: Pairing = {
    def etcNor = new Team("Norge",
      new Army("Amund SK") ::
        new Army("Asbjørn DE") ::
        new Army("Christian TK") ::
        new Army("Jarle HE") ::
        new Army("Martin LZ") ::
        new Army("Stian WE") ::
        new Army("Sverre DoC") ::
        new Army("Øystein DW") ::
        Nil, null)

    def opponentTeam = new Team("Poland",
      new Army("DE") ::
        new Army("DW") ::
        new Army("EM") ::
        new Army("LZ") ::
        new Army("SK") ::
        new Army("TK") ::
        new Army("VC") ::
        new Army("WE") ::
        Nil, null)

    val battleline = Array(
      Array(13,7,9,10,8,11,10,10),
      Array(11,8,8,9,7,8,9,6),
      Array(6,12,11,3,7,10,12,12),
      Array(12,9,9,1,10,10,12,8),
      Array(11,14,8,11,10,8,11,11),
      Array(13,12,8,12,8,5,11,14),
      Array(7,13,11,6,6,11,10,12),
      Array(12,11,9,7,13,11,4,11)
    )

    val meetingEngagement = Array(
      Array(-1,0,0,0,0,0,0,-1),
      Array(-3,0,-2,-3,0,0,-3,2),
      Array(0,1,-1,-2,-3,0,-3,2),
      Array(-1,0,0,1,0,1,0,-1),
      Array(0,0,-1,0,0,0,0,0),
      Array(0,0,0,0,0,-2,-1,0),
      Array(-3,2,1,0,-1,2,0,2),
      Array(-5,0,-4,-3,-2,-7,-2,0)
    )

    val bloodAndGlory = Array(
      Array(-3,-3,-3,-3,-3,-3,-3,-3),
      Array(0,0,0,0,0,0,-1,0),
      Array(0,2,-1,-2,-1,0,-1,0),
      Array(-1,0,0,1,0,1,0,0),
      Array(0,-1,0,0,1,0,1,1),
      Array(0,0,0,0,0,0,0,0),
      Array(1,1,2,0,-2,2,0,1),
      Array(-1,0,0,0,0,0,-1,0)
    )

    val kingOfTheHill = Array(
      Array(1,0,0,0,0,2,0,2),
      Array(-2,-2,-2,-1,-2,0,-3,0),
      Array(0,1,-2,-2,-2,0,-1,0),
      Array(-1,0,0,1,-3,0,1,-1),
      Array(-1,1,-2,0,-3,0,-2,0),
      Array(-1,-1,-2,0,-2,-2,0,0),
      Array(1,1,1,0,-1,2,0,1),
      Array(-2,0,-2,-2,-1,0,-2,0)
    )

    val pairing = new Pairing(Scenario.meetingEngagementFirst, MatchupEvaluations.fromScoreArray(etcNor, opponentTeam, battleline, bloodAndGlory, kingOfTheHill, meetingEngagement))
    pairing
  }

}
