Instance: FollowUpQuestionnaire
InstanceOf: Questionnaire
Title: "Follow up Questionnaire"
Description: "Questionnaire for the Follow-up stage of the DHIS2 Cancer Registry tracker program. Records the follow-up status of registered patients over time, capturing the date of last contact, vital status, and date of death when applicable. This stage is not associated with a specific tumor or source."
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

