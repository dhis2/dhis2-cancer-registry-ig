Instance: FollowUpQuestionnaire
InstanceOf: Questionnaire
Title: "Follow up Questionnaire"
Usage: #definition
* status = #draft
* experimental = false

* contained[+] = CRVitalStatusVS

* item[+].linkId = "crDateLastContact"
* item[=].text = "Date last contact"
* item[=].type = #date
* item[=].repeats = false
* item[=].required = false

* item[+].linkId = "crStatus"
* item[=].text = "Status"
* item[=].type = #choice
* item[=].repeats = false
* item[=].required = false
* item[=].answerValueSet = "#CRVitalStatusVS"

* item[+].linkId = "crDateOfDeath"
* item[=].text = "Date of death"
* item[=].type = #date
* item[=].repeats = false
* item[=].required = false

