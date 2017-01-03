package pairing.input

import java.nio.charset.StandardCharsets

import pairing.MatchupEvaluations._
import pairing.{Faction, MatchupEvaluations, Pairing, Team}

import scala.io.Source

object FilePairingReader {

  def readPairing(path: String, inverse: Boolean) : Pairing = {
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
    if (inverse) {
      new Pairing(MatchupEvaluations.fromScoreArray(maxTeam, minTeam, scoreArray).inverse())
    } else {
      new Pairing(MatchupEvaluations.fromScoreArray(maxTeam, minTeam, scoreArray))
    }
  }

}
