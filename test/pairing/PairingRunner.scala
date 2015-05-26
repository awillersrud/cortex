package pairing

object PairingRunner {

  def main(args: Array[String]): Unit = {
    Pairing.runInteractivePairing(TestData.lagkamp4)
    //val pairing: Pairing = new Pairing(Scenario.battlelineFirst, MatchupEvalauations.fromScoreArray(olannonTeamA, olannonTeamB, scoreArrayOlannonTest3))
    //Pairing.runInteractivePairing(pairing)
  }

}
