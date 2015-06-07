package pairing

object PairingRunner {

  def main(args: Array[String]): Unit = {
    new InteractivePairing(Treningskamper.lagkamp5).run()
  }

}
