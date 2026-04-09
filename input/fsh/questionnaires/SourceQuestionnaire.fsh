Instance: SourceQuestionnaire
InstanceOf: Questionnaire
Title: "Source Questionnaire"
Description: "Questionnaire for the Source stage of the DHIS2 Cancer Registry tracker program. Records the documentation sources from which a cancer case has been notified to the registry. Each source represents a piece of documentation (such as a hospital record, pathology report, or death certificate) linked to a specific tumor via the Tumor Number. Contains a visible Source section and a hidden TUMOURIDSOURCETABLE section used for CanReg5 data extraction."
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


