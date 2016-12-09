package pairing

import java.nio.charset.StandardCharsets

import pairing.MatchupEvaluations.ScoreArray

import scala.io.Source

object PairingRunner {

  def main(args: Array[String]): Unit = {

    val pairing = readPairing(args(0))

    new InteractivePairing(pairing).run()
  }

  def readPairing(path: String) : Pairing = {
    val lines: Iterator[String] = Source.fromFile(path, StandardCharsets.UTF_8.toString).getLines()
    def readTeam: Team = {
      val teamName = lines.next()
      val factions: List[Faction] = (for (i <- 1 to 5) yield new Faction(lines.next().trim)).toList
      lines.next() // empty line after each team
      new Team(teamName, factions, null)
    }
    val maxTeam = readTeam
    val minTeam = readTeam

    def readScoreArray: ScoreArray = {
      (for (i <-  1 to 5)
        yield lines.next().split(",").map(s => s.trim.toInt)).toArray
    }
    val scoreArray: ScoreArray = readScoreArray
    new Pairing(MatchupEvaluations.fromScoreArray(maxTeam, minTeam, scoreArray))
  }

}
