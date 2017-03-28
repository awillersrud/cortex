package cortex

object AnsiEscapeCode extends Enumeration {
  type EscapeCode = Value
  val RED: EscapeCode = Value("\u001b[31m")
  val GREEN: EscapeCode = Value("\u001b[32m")
  val RESET: EscapeCode = Value("\u001b[0m")

  def color(string: String, colorCode: EscapeCode) : String = colorCode + string + AnsiEscapeCode.RESET
  def color(string: String, max: Boolean) : String = if (max) AnsiEscapeCode.color(string, AnsiEscapeCode.GREEN) else AnsiEscapeCode.color(string, AnsiEscapeCode.RED)

  def removeEscapeCodes(string: String): String = {
    var stringWithoutEscapeCodes = string
    AnsiEscapeCode.values.foreach(code => stringWithoutEscapeCodes = stringWithoutEscapeCodes.replace(code.toString, ""))
    stringWithoutEscapeCodes
  }
}
