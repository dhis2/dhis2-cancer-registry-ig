Logical: Tumor
Title: "Tumor"
Parent: Base
* crIncidenceDate 0..1 date "CR - Incidence date"
  * ^code[+] = Dhis2DataElementsCS#c6EnHSAMUat
* crAge 0..1 unsignedInt "CR - Age"
  * ^code[+] = Dhis2DataElementsCS#tasm9QG8HaF
* crAddress 0..1 code "CR - Address"
* crAddress from CRAddressVS (required)
  * ^code[+] = Dhis2DataElementsCS#xcUBzN5QFXu
* crTumorNumber 1..1 code "CR - Tumor number"
* crTumorNumber from CRTumorNumberVS (required)
  * ^code[+] = Dhis2DataElementsCS#KgDQLAkC5ql
* crSite 0..1 code "CR - Site"
* crSite from CRSiteVS (required)
  * ^code[+] = Dhis2DataElementsCS#LCSApBii8CI
* crTopography 0..1 code "CR - Topography"
* crTopography from CRTopographyVS (required)
  * ^code[+] = Dhis2DataElementsCS#zw6Vwqnhvmh
* crMorphology 0..1 code "CR - Morphology"
* crMorphology from CRMorphology4VS (required)
  * ^code[+] = Dhis2DataElementsCS#UkyyY1xukJg
* crBehaviour 0..1 code "CR - Behaviour"
* crBehaviour from CRBehaviourVS (required)
  * ^code[+] = Dhis2DataElementsCS#MMIuwJdjx8B
* crBasisDiagnosis 0..1 code "CR - Basis diagnosis"
* crBasisDiagnosis from CRBasisDiagnosisVS (required)
  * ^code[+] = Dhis2DataElementsCS#uoyoNWrexbY
* crGrade 0..1 code "CR - Grade"
* crGrade from CRGradeVS (required)
  * ^code[+] = Dhis2DataElementsCS#ZMD8dwB3zOZ
* crChecksRunChecks 0..1 boolean "CR - Checks: Run checks"
  * ^code[+] = Dhis2DataElementsCS#FlGHlAuG4Ly
* crRunTopographyMorphologyCheck 0..1 boolean "CR - Run Topography Morphology check"
  * ^code[+] = Dhis2DataElementsCS#nFJ2MJ8Vxuj
* crRunMultiplePrimaryCheck 0..1 boolean "CR - Run Multiple primary check"
  * ^code[+] = Dhis2DataElementsCS#rqpqtJZto2L
* crChecksRareAgeMorphology 0..1 boolean "CR - Checks: Rare Age Morphology"
  * ^code[+] = Dhis2DataElementsCS#mxfPEKn6kFt
* crChecksRareAgeTopography 0..1 boolean "CR - Checks: Rare Age Topography"
  * ^code[+] = Dhis2DataElementsCS#rPvQffpxaEs
* crChecksRareAgeTopographyMorphology 0..1 boolean "CR - Checks: Rare Age Topography Morphology"
  * ^code[+] = Dhis2DataElementsCS#Laax6wSBp2G
* crChecksRareBasis 0..1 boolean "CR - Checks: Rare Basis"
  * ^code[+] = Dhis2DataElementsCS#U8v95tUnazC
* crChecksInvalidGrade 0..1 boolean "CR - Checks: Invalid Grade"
  * ^code[+] = Dhis2DataElementsCS#doB0rv08MIc
* crChecksRareSexMorphology 0..1 boolean "CR - Checks: Rare Sex Morphology"
  * ^code[+] = Dhis2DataElementsCS#FH09UKj7HMC
* crChecksInvalidSexTopography 0..1 boolean "CR - Checks: Invalid Sex Topography"
  * ^code[+] = Dhis2DataElementsCS#wAmyuRZNNXC
* crChecksRareTopographyBehaviour 0..1 boolean "CR - Checks: Rare Topography Behaviour"
  * ^code[+] = Dhis2DataElementsCS#ugeBdJzYHVW
* crChecksRareTopographyMorphology 0..1 boolean "CR - Checks: Rare Topography Morphology"
  * ^code[+] = Dhis2DataElementsCS#fdvzxz58nEE
* crChecksMultiplePrimaryTestResult 0..1 code "CR - Checks: Multiple primary test result"
* crChecksMultiplePrimaryTestResult from CRMultiplePrimaryTestVS (required)
  * ^code[+] = Dhis2DataElementsCS#VBkjlEwG4BE
* crRare 0..1 boolean "CR - Rare"
  * ^code[+] = Dhis2DataElementsCS#jTW2ljvoIc6
* crInvalid 0..1 boolean "CR - Invalid"
  * ^code[+] = Dhis2DataElementsCS#TXtHNzrfmki
* crMorphologyFamily 0..1 code "CR - Morphology Family"
* crMorphologyFamily from CRMorphologyFamilyVS (required)
  * ^code[+] = Dhis2DataElementsCS#RBu5b3A68mq
* crTopographyMorphologyKey 0..1 code "CR - Topography Morphology key"
* crTopographyMorphologyKey from CRTopographyMorphologyKeyVS (required)
  * ^code[+] = Dhis2DataElementsCS#XR1U9dr60xI
* crPresentInTheMustList 0..1 boolean "CR - Present in the MUST list"
  * ^code[+] = Dhis2DataElementsCS#oZyJlKscN6G
* crPresentInTheMustNotList 0..1 boolean "CR - Present in the MUST-NOT list"
  * ^code[+] = Dhis2DataElementsCS#DyVH5Q3Qf0Q
* crMorphologyGroup 0..1 code "CR - Morphology group"
* crMorphologyGroup from CRMorphologyGroupVS (required)
  * ^code[+] = Dhis2DataElementsCS#yt3gq8onyKb
* crPreviousMorphologyGroup 0..1 code "CR - Previous morphology group"
* crPreviousMorphologyGroup from CRMorphologyGroupVS (required)
  * ^code[+] = Dhis2DataElementsCS#eGWudq2aGpY
* crPreviousMorphologyGroupMultiple 0..1 code "CR - Previous morphology group (multiple)"
* crPreviousMorphologyGroupMultiple from CRMorphologyGroupVS (required)
  * ^code[+] = Dhis2DataElementsCS#dTbQZsduHT7
* crTopographyGroup 0..1 code "CR - Topography group"
* crTopographyGroup from CRTopographyGroupVS (required)
  * ^code[+] = Dhis2DataElementsCS#RmzIYvxiBm4
* crPreviousTopographyGroup 0..1 code "CR - Previous topography group"
* crPreviousTopographyGroup from CRTopographyGroupVS (required)
  * ^code[+] = Dhis2DataElementsCS#FyzoZsxRjjz
* crPreviousTopographyGroupMultiple 0..1 code "CR - Previous topography group (multiple)"
* crPreviousTopographyGroupMultiple from CRTopographyGroupVS (required)
  * ^code[+] = Dhis2DataElementsCS#IhLiguJKuzz
* crMorphologyResult 0..1 code "CR - Morphology result"
* crMorphologyResult from CRMorphologyResultVS (required)
  * ^code[+] = Dhis2DataElementsCS#n4IHuWceDlW
* crConfirmTheRareStatus 0..1 boolean "CR - Confirm the rare status"
  * ^code[+] = Dhis2DataElementsCS#z3JSu92EQhg
* crTumourid 0..1 string "CR - TUMOURID"
  * ^code[+] = Dhis2DataElementsCS#KwMs1DNVA0R
* crPreviousTumorNumber 0..1 code "CR - Previous tumor number"
* crPreviousTumorNumber from CRTumorNumberVS (required)
  * ^code[+] = Dhis2DataElementsCS#OrVAWBySU43
* crPatientId 0..1 string "CR - Patient ID"
  * ^code[+] = Dhis2DataElementsCS#EMoLghRDW4A
