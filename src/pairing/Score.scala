package pairing

class Score(val minScore: Int, val total: Int, val combinations: Int, val minMoves: List[Move]) extends Ordered[Score] {
  override def toString = {
    if (total > minScore)
      "min: " + minScore + ", avg: " + "%1.1f".format(avg) + ", combinations: " + combinations
    else
      "min: " + minScore
  }

  def getMinMovesDescription(premoves: List[Move]): String = {
    minMoves.filterNot(premoves.contains(_)).foldLeft("MinMoves:")((desc:String,m:Move) => desc + " [" + m.toString() + "]" )
  }

  val avg = total.toDouble / combinations

  def +(score: Score) = {
    new Score(scala.math.min(minScore, score.minScore), total + score.total, combinations + score.combinations, minMoves)
  }

  override def compare(that: Score) = {
    if (that.minScore != minScore)
      minScore - that.minScore
    else if (avg < that.avg) -1
    else if (avg > that.avg) 1
    else 0
  }
}

object Score {
  def max(s1: Score, s2: Score) : Score = {
    if (s1.compare(s2) > 0) s1 else s2
  }

  def min(s1: Score, s2: Score) : Score = {
    if (s1.compare(s2) < 0) s1 else s2
  }

  def MINIMUM_SCORE = new Score(0, 0, 1, Nil)
  def MAXIMUM_SCORE = new Score(Integer.MAX_VALUE, Integer.MAX_VALUE, 1, Nil)
}