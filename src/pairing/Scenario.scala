package pairing

object Scenario {
  val BATTLELINE:Scenario = new Scenario("Battleline")
  val BLOOD_AND_GLORY:Scenario = new Scenario("Blood & Glory")
  val KING_OF_THE_HILL:Scenario = new Scenario("King of the Hill")
  val MEETING_ENGAGEMENT:Scenario = new Scenario("Meeting Engagement")

  val battlelineFirst:List[Scenario] = BATTLELINE :: MEETING_ENGAGEMENT :: BLOOD_AND_GLORY :: KING_OF_THE_HILL :: Nil

  val meetingEngagementFirst:List[Scenario] = MEETING_ENGAGEMENT :: BLOOD_AND_GLORY :: KING_OF_THE_HILL :: BATTLELINE :: Nil

  val meetingEngagementFirst3:List[Scenario] = MEETING_ENGAGEMENT :: BLOOD_AND_GLORY :: KING_OF_THE_HILL :: Nil

  val bloodAndGloryFirst:List[Scenario] = BLOOD_AND_GLORY :: KING_OF_THE_HILL :: BATTLELINE :: MEETING_ENGAGEMENT :: Nil

  val kingOfTheHillFirst:List[Scenario] = KING_OF_THE_HILL :: BATTLELINE :: MEETING_ENGAGEMENT :: BLOOD_AND_GLORY :: Nil

  val kingOfTheHillFirst3:List[Scenario] = KING_OF_THE_HILL :: MEETING_ENGAGEMENT :: BLOOD_AND_GLORY :: Nil
}
case class Scenario(name:String) {
  override def toString = name
}
