package cortex

import org.junit.Assert._
import org.junit.Test

class AnsiEscapeCodeTest {

  @Test
  def testAnsiColors(): Unit = {
    val stringWithColorCodes = AnsiEscapeCode.color("ANSI_RED", AnsiEscapeCode.RED)
    assertEquals("ANSI_RED", AnsiEscapeCode.removeEscapeCodes(stringWithColorCodes))
    Console.print(stringWithColorCodes)
    Console.print(AnsiEscapeCode.color("ANSI_GREEN", AnsiEscapeCode.GREEN))
  }

}
