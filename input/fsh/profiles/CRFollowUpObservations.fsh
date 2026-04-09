Profile: CRVitalStatusObservation
Parent: Observation
Id: cr-vital-status-observation
Title: "Vital Status"
Description: "Follow-up vital status of the registered cancer patient (alive, dead, or unknown). Corresponds to the CR - Status data element in the DHIS2 Cancer Registry Follow-up stage."
* status MS
* code = CRObservationCodesCS#vital-status
* code ^short = "Vital Status"
* subject 1..1 MS
* subject only Reference(CRPatient)
* encounter 1..1 MS
* encounter only Reference(CRFollowUpEncounter)
* effective[x] only dateTime
* effectiveDateTime MS
* effectiveDateTime ^short = "Date of last contact"
* value[x] only CodeableConcept
* valueCodeableConcept 1..1 MS
* valueCodeableConcept from CRVitalStatusVS (required)

Profile: CRDateOfDeathObservation
Parent: Observation
Id: cr-date-of-death-observation
Title: "Date of Death"
Description: "Date of death of the cancer registry patient, recorded when the vital status is 'dead'. Corresponds to the CR - Date of death data element in the DHIS2 Cancer Registry Follow-up stage."
* status MS
* code = CRObservationCodesCS#date-of-death
* code ^short = "Date of Death"
* subject 1..1 MS
* subject only Reference(CRPatient)
* encounter 1..1 MS
* encounter only Reference(CRFollowUpEncounter)
* value[x] only dateTime
* valueDateTime 1..1 MS
