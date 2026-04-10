// Example: Complete cancer registration scenario
Instance: ExampleCRPatient
InstanceOf: CRPatient
Usage: #example
Title: "Example Cancer Registry Patient"
Description: "A 54-year-old female patient enrolled in the DHIS2 Cancer Registry."
* identifier[regno].system = "https://dhis2.org/fhir/cancer-registry/regno"
* identifier[regno].type = http://terminology.hl7.org/CodeSystem/v2-0203#MR
* identifier[regno].value = "20240001"
* name.family = "Doe"
* name.given = "Jane"
* gender = #female
* birthDate = "1970-03-15"

Instance: ExampleCRRegistrationEpisode
InstanceOf: CRCancerRegistrationEpisode
Usage: #example
Title: "Example Cancer Registration Episode"
Description: "Episode of care representing the patient's enrollment into the Cancer Registry programme."
* status = #active
* patient = Reference(ExampleCRPatient)
* period.start = "2026-01-01"

Instance: ExampleTumorEncounter
InstanceOf: CRTumorEncounter
Usage: #example
Title: "Example Tumor Encounter"
Description: "Encounter recording the Tumor stage event for primary breast carcinoma."
* status = #finished
* class = http://terminology.hl7.org/CodeSystem/v3-ActCode#AMB "ambulatory"
* type = CREncounterTypeCS#tumor
* subject = Reference(ExampleCRPatient)
* episodeOfCare = Reference(ExampleCRRegistrationEpisode)
* period.start = "2026-01-01"
* extension[rare].valueBoolean = false

Instance: ExampleTopography
InstanceOf: CRTopographyObservation
Usage: #example
Title: "Example Topography"
Description: "Topography observation: C50.4 — Upper-outer quadrant of breast."
* status = #final
* subject = Reference(ExampleCRPatient)
* encounter = Reference(ExampleTumorEncounter)
* effectiveDateTime = "2026-01-01"
* valueCodeableConcept = CRTopographyCS#"504" "Upper-outer quadrant of breast (504)"

Instance: ExampleMorphology
InstanceOf: CRMorphologyObservation
Usage: #example
Title: "Example Morphology"
Description: "Morphology observation: 8500 — Infiltrating duct carcinoma, NOS."
* status = #final
* subject = Reference(ExampleCRPatient)
* encounter = Reference(ExampleTumorEncounter)
* effectiveDateTime = "2026-01-01"
* valueCodeableConcept = CRMorphology4CS#"8500" "Infiltrating duct carcinoma, NOS (C50._) (8500)"

Instance: ExampleBehaviour
InstanceOf: CRBehaviourObservation
Usage: #example
Title: "Example Behaviour"
Description: "Behaviour observation: 3 — Malignant, primary site."
* status = #final
* subject = Reference(ExampleCRPatient)
* encounter = Reference(ExampleTumorEncounter)
* effectiveDateTime = "2026-01-01"
* valueCodeableConcept = CRBehaviourCS#3 "Malignant, primary site"

Instance: ExampleGrade
InstanceOf: CRGradeObservation
Usage: #example
Title: "Example Grade"
Description: "Histological grade observation: Grade 2 — moderately differentiated."
* status = #final
* code = http://loinc.org#33732-9
* subject = Reference(ExampleCRPatient)
* encounter = Reference(ExampleTumorEncounter)
* effectiveDateTime = "2026-01-01"
* valueCodeableConcept = CRGradeCS#2 "Grade II"

Instance: ExampleBasisOfDiagnosis
InstanceOf: CRBasisOfDiagnosisObservation
Usage: #example
Title: "Example Basis of Diagnosis"
Description: "Basis of diagnosis observation: 7 — Histology of primary."
* status = #final
* subject = Reference(ExampleCRPatient)
* encounter = Reference(ExampleTumorEncounter)
* effectiveDateTime = "2026-01-01"
* valueCodeableConcept = CRBasisDiagnosisCS#7 "Histology of primary"

Instance: ExampleSite
InstanceOf: CRSiteObservation
Usage: #example
Title: "Example Site"
Description: "Site observation: Breast."
* status = #final
* subject = Reference(ExampleCRPatient)
* encounter = Reference(ExampleTumorEncounter)
* effectiveDateTime = "2026-01-01"
* valueCodeableConcept = CRSiteCS#50 "Breast"

Instance: ExampleIncidenceDate
InstanceOf: CRIncidenceDateObservation
Usage: #example
Title: "Example Incidence Date"
Description: "Incidence date observation: 2026-01-01."
* status = #final
* subject = Reference(ExampleCRPatient)
* encounter = Reference(ExampleTumorEncounter)
* effectiveDateTime = "2026-01-01"
* valueDateTime = "2026-01-01"

Instance: ExampleAgeAtIncidence
InstanceOf: CRAgeAtIncidenceObservation
Usage: #example
Title: "Example Age at Incidence"
Description: "Age at incidence: 54 years."
* status = #final
* subject = Reference(ExampleCRPatient)
* encounter = Reference(ExampleTumorEncounter)
* effectiveDateTime = "2026-01-01"
* valueInteger = 54

Instance: ExampleTumorNumber
InstanceOf: CRTumorNumberObservation
Usage: #example
Title: "Example Tumor Number"
Description: "Tumour number: 01 (first tumour registered for this patient)."
* status = #final
* subject = Reference(ExampleCRPatient)
* encounter = Reference(ExampleTumorEncounter)
* effectiveDateTime = "2026-01-01"
* valueCodeableConcept = CRTumorNumberCS#"01" "01"

Instance: ExampleSourceEncounter
InstanceOf: CRSourceEncounter
Usage: #example
Title: "Example Source Encounter"
Description: "Encounter recording the Source stage event: hospital notification."
* status = #finished
* class = http://terminology.hl7.org/CodeSystem/v3-ActCode#AMB "ambulatory"
* type = CREncounterTypeCS#source
* subject = Reference(ExampleCRPatient)
* episodeOfCare = Reference(ExampleCRRegistrationEpisode)
* period.start = "2026-01-01"

Instance: ExampleSourceType
InstanceOf: CRSourceTypeObservation
Usage: #example
Title: "Example Source Type"
Description: "Source type: placeholder source type (to be localised)."
* status = #final
* subject = Reference(ExampleCRPatient)
* encounter = Reference(ExampleSourceEncounter)
* effectiveDateTime = "2026-01-01"
* valueCodeableConcept.text = "Hospital pathology department"

Instance: ExampleSourceTumorNumber
InstanceOf: CRSourceTumorNumberObservation
Usage: #example
Title: "Example Source Tumor Number"
Description: "Source links to tumor number 01."
* status = #final
* subject = Reference(ExampleCRPatient)
* encounter = Reference(ExampleSourceEncounter)
* effectiveDateTime = "2026-01-01"
* valueCodeableConcept = CRTumorNumberCS#"01" "01"


Instance: ExampleFollowUpEncounter
InstanceOf: CRFollowUpEncounter
Usage: #example
Title: "Example Follow-up Encounter"
Description: "Encounter recording a 6-month follow-up contact."
* status = #finished
* class = http://terminology.hl7.org/CodeSystem/v3-ActCode#AMB "ambulatory"
* type = CREncounterTypeCS#follow-up
* subject = Reference(ExampleCRPatient)
* episodeOfCare = Reference(ExampleCRRegistrationEpisode)
* period.start = "2026-01-01"

Instance: ExampleVitalStatus
InstanceOf: CRVitalStatusObservation
Usage: #example
Title: "Example Vital Status"
Description: "Patient alive at 6-month follow-up."
* status = #final
* subject = Reference(ExampleCRPatient)
* encounter = Reference(ExampleFollowUpEncounter)
* effectiveDateTime = "2026-01-01"
* valueCodeableConcept = CRVitalStatusCS#1 "Alive"