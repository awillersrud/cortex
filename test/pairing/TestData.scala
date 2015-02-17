package pairing

object TestData {
  def bskTeam = new Team("Oldtimers",
    new Army("Amund") ::
      new Army("Asbjørn") ::
      new Army("Martin") ::
      new Army("Øystein") :: Nil, null)

  def hyms = new Team("HYMS",
    new Army("Niklas LZ") ::
      new Army("Rickard HE") ::
      new Army("Adam Chaos Dwarfs") ::
      new Army("Fredrik SK") :: Nil, scoreArrayHyms)

  def scoreArrayHyms = Array(
    Array(10, 8, 13, 11),
    Array(10, 10, 8, 12),
    Array(11, 12, 20, 13),
    Array(11, 8, 10, 11)
  )

  def donkeyPunch = new Team("Donkey push",
    new Army("Hermund DoC") ::
      new Army("Lars Morten Brets") ::
      new Army("Hallvard VC") ::
      new Army("Truls WE") :: Nil,
    Array(
      Array(11, 12, 11, 10),
      Array(12, 12, 9, 7),
      Array(8, 12, 14, 15),
      Array(8, 10, 14, 15)
    )
  )

  def c4Spisnigel = new Team("C4 Spisnigel",
    new Army("Andre DW") ::
      new Army("Dan WE") ::
      new Army("Daniel DoC") ::
      new Army("David O&G") :: Nil, scoreArrayC4Spisnigel)

  def scoreArrayC4Spisnigel = Array(
    Array(7, 6, 11, 15),
    Array(8, 8, 14, 12),
    Array(12, 10, 13, 14),
    Array(14, 15, 8, 13)
  )

  def stefleifs = new Team("Stefleifs",
    new Army("Stefan DoC") ::
      new Army("Christian HE") ::
      new Army("Johan EM") ::
      new Army("Kaj DE") :: Nil, scoreArraystefleifs)

  def scoreArraystefleifs = Array(
    Array(10, 9, 12, 15),
    Array(11, 10, 12, 10),
    Array(11, 11, 11, 4),
    Array(11, 11, 8, 5)
  )


  def etcNor6 = new Team("ETC 6 NOR",
    new Army("Amund") ::
      new Army("Asbjørn") ::
      new Army("Martin") ::
      new Army("Øystein") ::
      new Army("Christian") ::
      new Army("Jarle") :: Nil, null)

  def etcNor8 = new Team("ETC 8 NOR",
      new Army("Jarle") ::
      new Army("Asbjørn") ::
        new Army("Christian") ::
        new Army("Amund") ::
        new Army("Stian") ::
        new Army("Martin") ::
        new Army("Sverre") ::
        new Army("Øystein") ::
       Nil, null)

  def stefleifs6 = new Team("Stefleifs",
    new Army("Stefan DoC") ::
      new Army("Christian HE") ::
      new Army("Johan EM") ::
      new Army("Kaj DE") ::
      new Army("Marcus O&G") ::
      new Army("Anders WE") :: Nil, null)

  def scoreArraystefleifs6 = Array(
    Array(10, 9, 12, 15, 15, 11),
    Array(10, 10, 12, 10, 9, 8),
    Array(11, 11, 11, 4, 14, 8),
    Array(13, 9, 8, 5, 7, 12),
    Array(12, 12, 14, 11, 14, 9),
    Array(7, 5, 5, 11, 9, 10)
  )

  def teamAwesome_2 = new Team("Awesome#2",
    new Army("Geir DE") ::
      new Army("Thomas BR") ::
      new Army("Hallvard VC") ::
      new Army("Hermund DoC") ::
      new Army("Lasse EM") ::
      new Army("Kenneth OK") ::
      new Army("Mats WoC") ::
      new Army("Julian DW") ::
      Nil, scoreArrayteamAwesome_2)

  def scoreArrayteamAwesome_2 = Array(
    Array(12, 10, 14,  7, 11, 14, 10,  8),
    Array(10, 10, 10, 10, 10, 10, 10, 10),
    Array(10, 14, 10, 12, 12, 13,  8,  6),
    Array(14, 13, 12, 13, 14, 14, 14,  8),
    Array(13, 11,  9, 10, 12, 11,  9,  7),
    Array(18, 14, 11, 16,  8, 15,  4, 13),
    Array(12, 12,  8, 16, 12, 14,  6, 16),
    Array(14, 10,  9,  4, 10, 13, 12, 10)
  )

  def lagkamp3 : Pairing = {
    def teamAwesome_3 = new Team("Awesome#3",
      new Army("Hallvard VC") ::
        new Army("Kenneth BM") ::
        new Army("Lasse EM") ::
        new Army("Kyrre DE") ::
        new Army("Geir DoC") ::
        new Army("Julian DW") ::
        new Army("Hermund TK") ::
        new Army("Thomas BR") ::
        Nil, null)

    def battleline = Array(
      Array(10, 12, 7, 12, 13, 6, 10, 8),
      Array(13, 12, 10, 9, 8, 10, 12, 12),
      Array(13, 12, 8, 10, 12, 7, 7, 12),
      Array(11, 14, 12, 14, 11, 8, 13, 12),
      Array(10, 12, 12, 12, 7, 11, 10, 12),
      Array(13, 14, 11, 10, 11, 12, 5, 8),
      Array(12, 6, 12, 14, 10, 10, 6, 12),
      Array(13, 15, 14, 15, 4, 10, 15, 8)
    )

    def bloodAndGlory = Array(
      Array( 0, 0, -1, -1, 0, 0, -1, 0),
      Array(0, 0, 0, 0, 0, 0, 0, 0),
      Array(0, 1, -1, 0, 0, -1, 0, 0),
      Array(-1, -1, -1, -1, -1, -1, -1, -1),
      Array(1, 1, 1, 0, -1, 1, 1, 1),
      Array(-1, 0, 0, 0, -1, 1, -2, 2),
      Array(-2, 0, 1, -1, -1, 0, 2, 0),
      Array(0, 1, 1, 0, 0, 0, 0, 0)
    )

    def kingOfTheHill = Array(
      Array(-3, 0, -3, 3, 3, -3, 0, -3),
      Array(-1, -1, 0, 0, -1, 0, 0, 0),
      Array(-2, 2, -2, -2, 1, -2, 0, 2),
      Array(0, 1, 0, 2, 1, 0, 1, 1),
      Array(-1, -1, 0, -1, -1, -1, -1, 0),
      Array(-1, 2, 1, 0, -1, 2, -1, -1),
      Array(2, -1, -1, 1, -1, 1, 2, 0),
      Array(-1, -1, 0, -1, -1, 0, 1, -1)
    )

    def meetingEngagement = Array(
      Array(-1, 1, -1, 1, 1, -1, -1, 1),
      Array(-1, -1, 0, -1, -2, 0, 0, 1),
      Array( 2, 0, 0, 1, 0, 1, -1, 1),
      Array( 0, 0, 0, 0, 0, 0, 0, 1),
      Array( 0, 0, 1, 1, -1, 0, 0, 1),
      Array( 0, 2, 0, 1, -2, 1, -2, 2),
      Array(-1, 0, -1, 1, 0, 1, 1, 2),
      Array(-1, 0, 1, -1, 0, 0, 0, 1)
    )

    val pairing = new Pairing(Scenario.kingOfTheHillFirst, MatchupEvalauations.fromScoreArray(etcNor8, teamAwesome_3, battleline, bloodAndGlory, kingOfTheHill, meetingEngagement))
    pairing
  }
}
