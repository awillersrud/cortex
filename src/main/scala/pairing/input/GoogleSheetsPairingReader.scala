package pairing.input

import com.google.api.services.sheets.v4.Sheets
import com.google.api.services.sheets.v4.model.ValueRange
import pairing.google.sheets.GoogleSheetsServiceFactory
import pairing.{Faction, MatchupEvaluations, Pairing, Team}

import scala.collection.JavaConversions._

class GoogleSheetsPairingReader(val sheetId: String, val range: String, val verticalIsMaxTeam : Boolean, val inverse: Boolean) {

  def readPairing() : Pairing = {
    val sheetsService: Sheets = GoogleSheetsServiceFactory.getSheetsService
    val response: ValueRange = sheetsService.spreadsheets.values.get(sheetId, range).execute

    val values: java.util.List[java.util.List[AnyRef]] = response.getValues
    val verticalTeamName : String = values.head.head.toString.split("/")(0).trim()
    val horizontalTeamName : String = values.head.head.toString.split("/")(1).trim()
    val horizontalTeam = new Team(horizontalTeamName, values.head.drop(1).map(value => new Faction(value.toString.trim)).toList, null)
    val verticalTeam = new Team(verticalTeamName, values.drop(1).map(row => new Faction(row.get(0).toString.trim)).toList, null)

    val evaluations: Array[Array[Int]] = values.drop(1).map(row => row.drop(1).map(value => value.toString.trim.replaceAll("%", "").toInt).toArray).toArray

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

}
