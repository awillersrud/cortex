package pairing

object PairingRunner {

  def main(args: Array[String]): Unit = {
    new InteractivePairing(TestPairings.norwayBlueVsRed).run()
  }

}
