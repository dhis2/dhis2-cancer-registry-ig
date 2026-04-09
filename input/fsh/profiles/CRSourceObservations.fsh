Profile: CRSourceTypeObservation
Parent: Observation
Id: cr-source-type-observation
Title: "Source Type"
Description: "Type of documentation source that notified the cancer registry about a case (e.g. hospital, laboratory, death certificate). Country-specific — must be localised. Corresponds to the CR - Source Type data element in the DHIS2 Cancer Registry Source stage."
* status MS
* code = CRObservationCodesCS#source-type
* code ^short = "Source Type"
* subject 1..1 MS
* subject only Reference(CRPatient)
* encounter 1..1 MS
* encounter only Reference(CRSourceEncounter)
* value[x] only CodeableConcept
* valueCodeableConcept 1..1 MS
* valueCodeableConcept from CRPlaceholderSourceTypeVS (extensible)

Profile: CRSourceTumorNumberObservation
Parent: Observation
Id: cr-source-tumor-number-observation
Title: "Source Tumor Number"
Description: "Tumor number that this source notification relates to. Links the source to a specific tumor within the patient's registration. Corresponds to the CR - Source: Tumor number data element in the DHIS2 Cancer Registry Source stage."
* status MS
* code = CRObservationCodesCS#source-tumor-number
* code ^short = "Source Tumor Number"
* subject 1..1 MS
* subject only Reference(CRPatient)
* encounter 1..1 MS
* encounter only Reference(CRSourceEncounter)
* value[x] only CodeableConcept
* valueCodeableConcept 1..1 MS
* valueCodeableConcept from CRTumorNumberVS (required)
