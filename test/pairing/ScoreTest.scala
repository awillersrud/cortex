package pairing

import org.junit.Test
import org.junit.Assert.assertTrue
import org.junit.Assert.assertThat
import org.hamcrest.CoreMatchers.equalTo
import org.hamcrest.CoreMatchers.sameInstance

class ScoreTest {

  @Test
  def testAggregate(): Unit = {
    def sum = new Score(3, 10, 10, Nil) + new Score(7, 10, 10, Nil)
    assertThat(sum.minScore, equalTo(3))
    assertThat(sum.combinations, equalTo(20))
    assertThat(sum.total, equalTo(20))
  }

  @Test
  def testMin(): Unit = {
    val lowest: Score = new Score(1, 10, 10, Nil)
    val highest: Score = new Score(10, 10, 10, Nil)
    assertThat(Score.min(highest, lowest), sameInstance(lowest))
  }

  @Test
  def testCompareOnMinValues_larger() {
    assertTrue(new Score(1, 10, 10, Nil).compare(new Score(0, 10, 10, Nil)) > 0)
  }

  @Test
  def testCompareOnMinValues_smaller() {
    assertTrue(new Score(1, 10, 10, Nil).compare(new Score(2, 10, 10, Nil)) < 0)
  }

  @Test
  def testCompare_equal() {
    assertThat(new Score(1, 10, 10, Nil).compare(new Score(1, 10, 10, Nil)), equalTo(0))
  }

  @Test
  def testCompareOnAvg_larger() {
    assertTrue(new Score(1, 10, 10, Nil).compare(new Score(1, 5, 10, Nil)) > 0)
  }

  @Test
  def testCompareOnAvg_smaller() {
    assertTrue(new Score(1, 5, 10, Nil).compare(new Score(1, 10, 10, Nil)) < 0)
  }


  @Test
  def testAvg(): Unit = {
    assertThat(new Score(1, 10, 10, Nil).avg, equalTo(1.0))
  }

}
