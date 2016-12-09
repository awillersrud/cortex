package pairing

import org.junit.Test
import org.junit.Assert._
import org.hamcrest.CoreMatchers.equalTo

class PairingRunnerTest {

  @Test
  def testReadPairingFromFile(): Unit = {
    val pairing: Pairing = PairingRunner.readPairing("src/test/resources/test-pairing.csv")
    assertThat(pairing.maxTeam.name, equalTo("Hugin2"))
    assertThat(pairing.maxTeam.factions.head.name, equalTo("h1"))
    assertThat(pairing.minTeam.name, equalTo("Munin2"))
    assertThat(pairing.minTeam.factions.head.name, equalTo("m1"))
    assertThat(pairing.gameState.scoreMatchup(new Faction("h1"), new Faction("m1")), equalTo(11))
  }

}
