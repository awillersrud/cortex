package pairing

import java.io.{StringWriter, PrintWriter}

import org.junit.Test

class EgfPrinterTest {

  @Test
  def egfPrinterTest(): Unit = {
    val pairing = TestPairings.norwayBlueVsRed
    pairing.makeMoves(TestPairings.blueVsRedMoves.dropRight(1))
    val stringWriter: StringWriter = new StringWriter()
    val writer: PrintWriter = new PrintWriter(stringWriter)
    new EgfPrinter().printEgfMove(pairing, writer)
    writer.close()
    stringWriter.close()
    val egf: String = stringWriter.getBuffer.toString
    Console.println(egf)
    assert(egf.contains("{31 19 }"))
  }
}
