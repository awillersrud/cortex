package pairing

import org.junit.Test

/**
 * Created by awi on 06/06/15.
 */
class RandomNumberGenerator {

  @Test
  def chooseStrategy(): Unit = {
      println("Max choice: " + (scala.util.Random.nextInt(17)+1))
      println("Min choice: " + (scala.util.Random.nextInt(17)+1))
  }

}
