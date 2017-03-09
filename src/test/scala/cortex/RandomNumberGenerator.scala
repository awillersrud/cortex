package cortex

import org.junit.Test

class RandomNumberGenerator {

  @Test
  def chooseStrategy(): Unit = {
      println("Max choice: " + (scala.util.Random.nextInt(17)+1))
      println("Min choice: " + (scala.util.Random.nextInt(17)+1))
  }

  @Test
  def sumRandomVariablesTest(): Unit = {
    val matchups = 4 :: 4 :: 9 :: 4 :: 4 :: Nil
    val experimentCount: Int = 100000

    val expectedNumberOfVictories : Double = matchups.sum.toDouble

    def performExperiment: Int = {
      val results: List[Boolean] = for (m <- matchups) yield scala.util.Random.nextDouble() < (m / 10.0)
      val victories: Int = results.foldLeft(0) { (acc: Int, win) => if (win) acc + 1 else acc }
      victories
    }
    val totalNumberOfVictories = (for (i <- 1 to experimentCount) yield performExperiment).sum

    Console.println("Experiments: " + experimentCount)
    Console.println("Evaluations: " + matchups)
    Console.println("Expected number of victories per test: " + expectedNumberOfVictories)
    Console.println("Total victories: " + totalNumberOfVictories)
    Console.println("Avg victories: " + totalNumberOfVictories.toDouble / experimentCount.toDouble)
  }

}
