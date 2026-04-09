Instance: SourceQuestionnaire
InstanceOf: Questionnaire
Title: "Source Questionnaire"
Usage: #definition
* status = #draft
* experimental = false

* contained[+] = CRTumorNumberVS
* contained[+] = CRPlaceholderSourceTypeVS

* item[+].linkId = "sourceGroup"
* item[=].text = "Source"
* item[=].type = #group
* item[=]
  * item[+].linkId = "crSourceTumorNumber"
  * item[=].text = "Tumor number"
  * item[=].type = #choice
  * item[=].repeats = false
  * item[=].required = true
  * item[=].answerValueSet = "#CRTumorNumberVS"

  * item[+].linkId = "crSourceDate"
  * item[=].text = "Source date"
  * item[=].type = #date
  * item[=].repeats = false
  * item[=].required = false

  * item[+].linkId = "crSourceType"
  * item[=].text = "Source Type"
  * item[=].type = #choice
  * item[=].repeats = false
  * item[=].required = false
  * item[=].answerValueSet = "#CRPlaceholderSourceTypeVS"

* item[+].linkId = "tumouridsourcetableGroup"
* item[=].text = "TUMOURIDSOURCETABLE"
* item[=].type = #group
* item[=]
  * item[+].linkId = "crPatientId"
  * item[=].text = "Patient ID"
  * item[=].type = #string
  * item[=].repeats = false
  * item[=].required = false

  * item[+].linkId = "crTumouridsourcetable"
  * item[=].text = "TUMOURIDSOURCETABLE"
  * item[=].type = #string
  * item[=].repeats = false
  * item[=].required = false


