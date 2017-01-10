package pairing.input

import com.google.api.services.sheets.v4.Sheets
import com.google.api.services.sheets.v4.model.ValueRange
import pairing.google.sheets.GoogleSheetsServiceFactory
import pairing.{Faction, MatchupEvaluations, Pairing, Team}

import scala.util.Try
import scala.collection.JavaConversions._

class GoogleSheetsPairingReader(val sheetId: String, val range: String, val verticalIsMaxTeam: Boolean, val inverse: Boolean) {

  def readPairing(): Pairing = {
    val sheetsService: Sheets = GoogleSheetsServiceFactory.getSheetsService
    val response: ValueRange = sheetsService.spreadsheets.values.get(sheetId, range).execute

    val values: java.util.List[java.util.List[AnyRef]] = response.getValues

    val scalaValues: Array[Array[String]] = values.map(row => row.map(value => value.toString).toArray).toArray

    if (scalaValues.length != 6) {
      throw new IllegalArgumentException("Incorrect number of rows in range '" + range + "', expected 6 found " + scalaValues.length)
    }
    val columns: Int = scalaValues.map(_.length).max
    if (columns != 6) {
      throw new IllegalArgumentException("Incorrect number of columns in range '" + range + "', expected 6 found " + columns)
    }

    var verticalTeamName = "VerticalTeam"
    var horizontalTeamName = "HorizontalTeam"
    val teamNamesCell: String = scalaValues.head.head
    if (teamNamesCell.contains("/")) {
      val verticalTeamName: String = teamNamesCell.split("/")(0).trim()
      val horizontalTeamName: String = teamNamesCell.split("/")(1).trim()
    } else {
      System.out.println("WARN Cannot parse team names, defaulting to " + verticalTeamName + "/" + horizontalTeamName)
    }
    val horizontalTeam = new Team(horizontalTeamName, scalaValues.head.drop(1).map(value => new Faction(value.trim)).toList, null)
    val verticalTeam = new Team(verticalTeamName, scalaValues.drop(1).map(row => new Faction(row(0).trim)).toList, null)

    val evaluations: Array[Array[Int]] =
     for ((row:Array[String],rowIndex) <- scalaValues.drop(1).zipWithIndex) yield
        for ((value:String,columnIndex) <- row.drop(1).zipWithIndex) yield convertToInt(value, verticalTeam.factions(rowIndex) , horizontalTeam.factions(columnIndex))

    val matchupEvaluations: MatchupEvaluations = if (verticalIsMaxTeam) {
      MatchupEvaluations.fromScoreArray(verticalTeam, horizontalTeam, evaluations)
    } else {
      MatchupEvaluations.fromScoreArray(horizontalTeam, verticalTeam, evaluations)
    }
    if (inverse) {
      new Pairing(matchupEvaluations.inverse())
    } else {
      new Pairing(matchupEvaluations)
    }
  }

  def convertToInt(value: String, rowFaction: Faction, columnFaction: Faction): Int = {
    Try(value.trim.replaceAll("%", "").toInt).toOption match {
      case Some(i) => i
      case None => throw new IllegalArgumentException("Cannot parse value: '" + value + "',  row: " + rowFaction.name + ", column: " + columnFaction.name)
    }
  }
}
