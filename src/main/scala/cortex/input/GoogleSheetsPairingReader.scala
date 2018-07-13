package cortex.input

import java.util

import com.google.api.services.sheets.v4.Sheets
import com.google.api.services.sheets.v4.model.ValueRange
import cortex.google.sheets.GoogleSheetsServiceFactory
import cortex.{Faction, MatchupEvaluations, Pairing, Team}

import scala.util.Try
import scala.collection.JavaConversions._

class GoogleSheetsPairingReader(val sheetId: String, val evaluationsRange: String, val verticalIsMaxTeam: Boolean, val inverse: Boolean, val categoryMappingsRange: Option[String] = None) {

  def readPairing(): Pairing = {
    val sheetsService: Sheets = GoogleSheetsServiceFactory.getSheetsService
    val scalaValues: Array[Array[String]] = readScalaArrayFromRange(sheetsService, Some(6), 6, evaluationsRange)
    val categoryMappings: Map[String, Int] = categoryMappingsRange match {
      case Some(s) => buildCategoryMappings(readScalaArrayFromRange(sheetsService, None, 2, s))
      case None => Map.empty
    }

    var verticalTeamName = "VerticalTeam"
    var horizontalTeamName = "HorizontalTeam"
    val teamNamesCell: String = scalaValues.head.head
    if (teamNamesCell.contains("/")) {
      verticalTeamName = teamNamesCell.split("/")(0).trim()
      horizontalTeamName = teamNamesCell.split("/")(1).trim()
    } else {
      System.out.println("WARN Cannot parse team names, defaulting to " + verticalTeamName + "/" + horizontalTeamName)
    }
    val horizontalTeam = new Team(horizontalTeamName, !verticalIsMaxTeam, scalaValues.head.drop(1).map(value => new Faction(value.trim)).toList)
    val verticalTeam = new Team(verticalTeamName, verticalIsMaxTeam, scalaValues.drop(1).map(row => new Faction(row(0).trim)).toList)

    val evaluations: Array[Array[Int]] =
     for ((row:Array[String],rowIndex) <- scalaValues.drop(1).zipWithIndex) yield
        for ((value:String,columnIndex) <- row.drop(1).zipWithIndex) yield convertToInt(value, verticalTeam.factions(rowIndex) , horizontalTeam.factions(columnIndex), categoryMappings)

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

  private def readScalaArrayFromRange(sheetsService: Sheets, rowCount: Option[Int], columnCount: Int, range: String) = {
    val response: ValueRange = sheetsService.spreadsheets.values.get(sheetId, range).execute

    val values: util.List[util.List[AnyRef]] = response.getValues

    val scalaValues: Array[Array[String]] = values.map(row => row.map(value => value.toString).toArray).toArray

    if (rowCount.isDefined && scalaValues.length != rowCount.get) {
      throw new IllegalArgumentException("Incorrect number of rows in range '" + range + "', expected " + rowCount + " found " + scalaValues.length)
    }
    val columns: Int = scalaValues.map(_.length).max
    if (columns != columnCount) {
      throw new IllegalArgumentException("Incorrect number of columns in range '" + range + "', expected " + columnCount + " found " + columns)
    }
    scalaValues
  }

  def convertToInt(value: String, rowFaction: Faction, columnFaction: Faction, categoryMappings: Map[String, Int]): Int = {
    val mappedScore : Option[Int] = categoryMappings.get(value.trim)
    mappedScore match {
      case Some(s) => s
      case None => Try(value.trim.replaceAll("%", "").toInt).toOption match {
        case Some(i) => i
        case None => throw new IllegalArgumentException("Cannot parse value: '" + value + "',  row: " + rowFaction.name + ", column: " + columnFaction.name)
      }
    }
  }

  private def buildCategoryMappings(categoryMappingsArray: Array[Array[String]]) : Map[String, Int] =
    categoryMappingsArray.map(r => (r(0), r(1).toInt)).toMap

}
