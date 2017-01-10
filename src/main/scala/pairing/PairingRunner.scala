package pairing

import java.io.File

import pairing.input.{FilePairingReader, GoogleSheetsPairingReader}

object PairingRunner {

  case class Config(file: Option[File] = None, sheet: Option[String] = None, range: String = "A3:F8", inverse: Boolean = false)


  def main(args: Array[String]): Unit = {

    val parser = new scopt.OptionParser[Config]("wtc-pairing") {

      head("wtc-pairing", "0.2")

      opt[Unit]("inverse").action((_,c) => c.copy(inverse = true)).text("Run pairing program from opponents perspective")

      note("")

      cmd("sheet").text("Read pairing table from Google Sheet").children(
        opt[String]("range").action((r,c)=>c.copy(range = r)).required().text("Sheet range. Must be 6x6. Supports sheet prefix like: Match2!A3:F8"),
        arg[String]("<GoogleSheetId>").action((s,c)=>c.copy(sheet=Some(s))).text("Id found in google sheet url"),
        note("")
      )
      cmd("file").text("Read pairing table file").children(
        arg[String]("<file>").validate(file => if (new File(file).exists()) success else failure("File '" + file + "' not found"))
          .action((f, c)=>c.copy(file=Some(new File(f)))).text("Path to file containing team and pairing info")
      )
    }

    parser.parse(args, Config()) match {
      case Some(config) =>
        if (config.file.isDefined) {
          new InteractivePairing(FilePairingReader.readPairing(config.file.get, config.inverse)).run()
        } else if (config.sheet.isDefined) {
          val reader = new GoogleSheetsPairingReader(config.sheet.get, config.range, verticalIsMaxTeam = true, config.inverse)
          new InteractivePairing(reader.readPairing()).run()
        } else {
          parser.showUsageAsError()
          System.exit(1)
        }
      case None => System.exit(1)
    }
  }
}
