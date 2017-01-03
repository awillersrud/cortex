package pairing

import pairing.input.{FilePairingReader, GoogleSheetsPairingReader}

object PairingRunner {

  def main(args: Array[String]): Unit = {
    if (args.length == 0) {
      usage
    } else if (args(0).startsWith("--file")) {
      new InteractivePairing(FilePairingReader.readPairing(args(1), args.contains("--inverse"))).run()
    } else if (args(0).startsWith("--sheet")) {
      val range = args(3)
      val reader = new GoogleSheetsPairingReader(sheetId = args(1), range, verticalIsMaxTeam = true, inverse = args.contains("--inverse"))
      new InteractivePairing(reader.readPairing()).run()
    } else {
      usage
    }
  }

  def usage: Unit = {
    Console.println("Usage: \n--file RedVsBlue.txt\nOR\n--sheet <GoogleSheetsId> --range A3:F8 [--inverse]")
    System.exit(1)
  }
}
