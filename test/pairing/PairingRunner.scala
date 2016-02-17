package pairing

object PairingRunner {

  def main(args: Array[String]): Unit = {
    new InteractivePairing(EtcKamper2015.slag6_Poland).run()
  }

}
