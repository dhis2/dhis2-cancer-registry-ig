Instance: TumorQuestionnaire
InstanceOf: Questionnaire
Title: "Tumor Questionnaire"
Usage: #definition
* status = #draft
* experimental = false

* contained[+] = CRAddressVS
* contained[+] = CRTumorNumberVS
* contained[+] = CRSiteVS
* contained[+] = CRTopographyVS
* contained[+] = CRMorphology4VS
* contained[+] = CRBehaviourVS
* contained[+] = CRBasisDiagnosisVS
* contained[+] = CRGradeVS
* contained[+] = CRMultiplePrimaryTestVS
* contained[+] = CRMorphologyFamilyVS
* contained[+] = CRTopographyMorphologyKeyVS
* contained[+] = CRMorphologyGroupVS
* contained[+] = CRTopographyGroupVS
* contained[+] = CRMorphologyResultVS

* item[+].linkId = "patientGroup"
* item[=].text = "Patient"
* item[=].type = #group
* item[=]
  * item[+].linkId = "crIncidenceDate"
  * item[=].text = "Incidence date"
  * item[=].type = #date
  * item[=].repeats = false
  * item[=].required = false

  * item[+].linkId = "crAge"
  * item[=].text = "Age"
  * item[=].type = #integer
  * item[=].repeats = false
  * item[=].required = false

  * item[+].linkId = "crAddress"
  * item[=].text = "Address"
  * item[=].type = #choice
  * item[=].repeats = false
  * item[=].required = false
  * item[=].answerValueSet = "#CRAddressVS"

* item[+].linkId = "tumorGroup"
* item[=].text = "Tumor"
* item[=].type = #group
* item[=]
  * item[+].linkId = "crTumorNumber"
  * item[=].text = "Tumor number"
  * item[=].type = #choice
  * item[=].repeats = false
  * item[=].required = true
  * item[=].answerValueSet = "#CRTumorNumberVS"

  * item[+].linkId = "crSite"
  * item[=].text = "Site"
  * item[=].type = #choice
  * item[=].repeats = false
  * item[=].required = false
  * item[=].answerValueSet = "#CRSiteVS"

  * item[+].linkId = "crTopography"
  * item[=].text = "Topography"
  * item[=].type = #choice
  * item[=].repeats = false
  * item[=].required = false
  * item[=].answerValueSet = "#CRTopographyVS"

  * item[+].linkId = "crMorphology"
  * item[=].text = "Morphology"
  * item[=].type = #choice
  * item[=].repeats = false
  * item[=].required = false
  * item[=].answerValueSet = "#CRMorphology4VS"

  * item[+].linkId = "crBehaviour"
  * item[=].text = "Behaviour"
  * item[=].type = #choice
  * item[=].repeats = false
  * item[=].required = false
  * item[=].answerValueSet = "#CRBehaviourVS"

  * item[+].linkId = "crBasisDiagnosis"
  * item[=].text = "Basis diagnosis"
  * item[=].type = #choice
  * item[=].repeats = false
  * item[=].required = false
  * item[=].answerValueSet = "#CRBasisDiagnosisVS"

  * item[+].linkId = "crGrade"
  * item[=].text = "Grade"
  * item[=].type = #choice
  * item[=].repeats = false
  * item[=].required = false
  * item[=].answerValueSet = "#CRGradeVS"

* item[+].linkId = "checkStatusGroup"
* item[=].text = "Check Status"
* item[=].type = #group
* item[=]
  * item[+].linkId = "crChecksRunChecks"
  * item[=].text = "Run checks"
  * item[=].type = #boolean
  * item[=].repeats = false
  * item[=].required = false

  * item[+].linkId = "crRunTopographyMorphologyCheck"
  * item[=].text = "Run Topography Morphology check"
  * item[=].type = #boolean
  * item[=].repeats = false
  * item[=].required = false

  * item[+].linkId = "crRunMultiplePrimaryCheck"
  * item[=].text = "Run Multiple primary check"
  * item[=].type = #boolean
  * item[=].repeats = false
  * item[=].required = false

* item[+].linkId = "checksGroup"
* item[=].text = "Checks"
* item[=].type = #group
* item[=]
  * item[+].linkId = "crChecksRareAgeMorphology"
  * item[=].text = "Rare Age Morphology"
  * item[=].type = #boolean
  * item[=].repeats = false
  * item[=].required = false

  * item[+].linkId = "crChecksRareAgeTopography"
  * item[=].text = "Rare Age Topography"
  * item[=].type = #boolean
  * item[=].repeats = false
  * item[=].required = false

  * item[+].linkId = "crChecksRareAgeTopographyMorphology"
  * item[=].text = "Rare Age Topography Morphology"
  * item[=].type = #boolean
  * item[=].repeats = false
  * item[=].required = false

  * item[+].linkId = "crChecksRareBasis"
  * item[=].text = "Rare Basis"
  * item[=].type = #boolean
  * item[=].repeats = false
  * item[=].required = false

  * item[+].linkId = "crChecksInvalidGrade"
  * item[=].text = "Invalid Grade"
  * item[=].type = #boolean
  * item[=].repeats = false
  * item[=].required = false

  * item[+].linkId = "crChecksRareSexMorphology"
  * item[=].text = "Rare Sex Morphology"
  * item[=].type = #boolean
  * item[=].repeats = false
  * item[=].required = false

  * item[+].linkId = "crChecksInvalidSexTopography"
  * item[=].text = "Invalid Sex Topography"
  * item[=].type = #boolean
  * item[=].repeats = false
  * item[=].required = false

  * item[+].linkId = "crChecksRareTopographyBehaviour"
  * item[=].text = "Rare Topography Behaviour"
  * item[=].type = #boolean
  * item[=].repeats = false
  * item[=].required = false

  * item[+].linkId = "crChecksRareTopographyMorphology"
  * item[=].text = "Rare Topography Morphology"
  * item[=].type = #boolean
  * item[=].repeats = false
  * item[=].required = false

  * item[+].linkId = "crChecksMultiplePrimaryTestResult"
  * item[=].text = "Multiple primary test result"
  * item[=].type = #choice
  * item[=].repeats = false
  * item[=].required = false
  * item[=].answerValueSet = "#CRMultiplePrimaryTestVS"

  * item[+].linkId = "crRare"
  * item[=].text = "Rare"
  * item[=].type = #boolean
  * item[=].repeats = false
  * item[=].required = false

  * item[+].linkId = "crInvalid"
  * item[=].text = "Invalid"
  * item[=].type = #boolean
  * item[=].repeats = false
  * item[=].required = false

* item[+].linkId = "morphologyTopographyCheckGroup"
* item[=].text = "Morphology topography check"
* item[=].type = #group
* item[=]
  * item[+].linkId = "crMorphologyFamily"
  * item[=].text = "Morphology Family"
  * item[=].type = #choice
  * item[=].repeats = false
  * item[=].required = false
  * item[=].answerValueSet = "#CRMorphologyFamilyVS"

  * item[+].linkId = "crTopographyMorphologyKey"
  * item[=].text = "Topography Morphology key"
  * item[=].type = #choice
  * item[=].repeats = false
  * item[=].required = false
  * item[=].answerValueSet = "#CRTopographyMorphologyKeyVS"

  * item[+].linkId = "crPresentInTheMustList"
  * item[=].text = "Present in the MUST list"
  * item[=].type = #boolean
  * item[=].repeats = false
  * item[=].required = false

  * item[+].linkId = "crPresentInTheMustNotList"
  * item[=].text = "Present in the MUST-NOT list"
  * item[=].type = #boolean
  * item[=].repeats = false
  * item[=].required = false

* item[+].linkId = "multiplePrimaryTesterGroup"
* item[=].text = "Multiple primary tester"
* item[=].type = #group
* item[=]
  * item[+].linkId = "crMorphologyGroup"
  * item[=].text = "Morphology group"
  * item[=].type = #choice
  * item[=].repeats = false
  * item[=].required = false
  * item[=].answerValueSet = "#CRMorphologyGroupVS"

  * item[+].linkId = "crPreviousMorphologyGroup"
  * item[=].text = "Previous morphology group"
  * item[=].type = #choice
  * item[=].repeats = false
  * item[=].required = false
  * item[=].answerValueSet = "#CRMorphologyGroupVS"

  * item[+].linkId = "crPreviousMorphologyGroupMultiple"
  * item[=].text = "Previous morphology group (multiple)"
  * item[=].type = #choice
  * item[=].repeats = false
  * item[=].required = false
  * item[=].answerValueSet = "#CRMorphologyGroupVS"

  * item[+].linkId = "crTopographyGroup"
  * item[=].text = "Topography group"
  * item[=].type = #choice
  * item[=].repeats = false
  * item[=].required = false
  * item[=].answerValueSet = "#CRTopographyGroupVS"

  * item[+].linkId = "crPreviousTopographyGroup"
  * item[=].text = "Previous topography group"
  * item[=].type = #choice
  * item[=].repeats = false
  * item[=].required = false
  * item[=].answerValueSet = "#CRTopographyGroupVS"

  * item[+].linkId = "crPreviousTopographyGroupMultiple"
  * item[=].text = "Previous topography group (multiple)"
  * item[=].type = #choice
  * item[=].repeats = false
  * item[=].required = false
  * item[=].answerValueSet = "#CRTopographyGroupVS"

  * item[+].linkId = "crMorphologyResult"
  * item[=].text = "Morphology result"
  * item[=].type = #choice
  * item[=].repeats = false
  * item[=].required = false
  * item[=].answerValueSet = "#CRMorphologyResultVS"

* item[+].linkId = "rareStatusGroup"
* item[=].text = "Rare status"
* item[=].type = #group
* item[=]
  * item[+].linkId = "crConfirmTheRareStatus"
  * item[=].text = "Confirm the rare status"
  * item[=].type = #boolean
  * item[=].repeats = false
  * item[=].required = false

* item[+].linkId = "tumourIdGroup"
* item[=].text = "Tumour ID"
* item[=].type = #group
* item[=]
  * item[+].linkId = "crTumourid"
  * item[=].text = "TUMOURID"
  * item[=].type = #string
  * item[=].repeats = false
  * item[=].required = false

  * item[+].linkId = "crPreviousTumorNumber"
  * item[=].text = "Previous tumor number"
  * item[=].type = #choice
  * item[=].repeats = false
  * item[=].required = false
  * item[=].answerValueSet = "#CRTumorNumberVS"

  * item[+].linkId = "crPatientId"
  * item[=].text = "Patient ID"
  * item[=].type = #string
  * item[=].repeats = false
  * item[=].required = false


