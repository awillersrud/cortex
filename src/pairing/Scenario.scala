package pairing

object Scenario {
  val BATTLELINE:Scenario = new Scenario("Battleline")
  val BLOOD_AND_GLORY:Scenario = new Scenario("Blood & Glory")
  val KING_OF_THE_HILL:Scenario = new Scenario("King of the Hill")
  val MEETING_ENGAGEMENT:Scenario = new Scenario("Meeting Engagement")

  val battlelineFirst:List[Scenario] = BATTLELINE :: BATTLELINE :: MEETING_ENGAGEMENT :: MEETING_ENGAGEMENT :: BLOOD_AND_GLORY :: BLOOD_AND_GLORY ::
    KING_OF_THE_HILL :: KING_OF_THE_HILL :: Nil

  val meetingEngagementFirst:List[Scenario] = MEETING_ENGAGEMENT :: MEETING_ENGAGEMENT :: BLOOD_AND_GLORY :: BLOOD_AND_GLORY ::
    KING_OF_THE_HILL :: KING_OF_THE_HILL :: BATTLELINE :: BATTLELINE :: Nil

  val bloodAndGloryFirst:List[Scenario] = BLOOD_AND_GLORY :: BLOOD_AND_GLORY ::
    KING_OF_THE_HILL :: KING_OF_THE_HILL :: BATTLELINE :: BATTLELINE :: MEETING_ENGAGEMENT :: MEETING_ENGAGEMENT :: Nil

  val kingOfTheHillFirst:List[Scenario] = KING_OF_THE_HILL :: KING_OF_THE_HILL :: BATTLELINE :: BATTLELINE ::
    MEETING_ENGAGEMENT :: MEETING_ENGAGEMENT :: BLOOD_AND_GLORY :: BLOOD_AND_GLORY :: Nil
}
case class Scenario(name:String) {
  override def toString = name
}
