Alias: $loinc = http://loinc.org

Profile: CRTopographyObservation
Parent: Observation
Id: cr-topography-observation
Title: "Topography"
Description: "ICD-O-3 topography code indicating the anatomical site of the primary tumour. Corresponds to the CR - Topography data element in the DHIS2 Cancer Registry Tumor stage."
* status MS
* code = CRObservationCodesCS#topography
* code ^short = "Topography"
* subject 1..1 MS
* subject only Reference(CRPatient)
* encounter 1..1 MS
* encounter only Reference(CRTumorEncounter)
* value[x] only CodeableConcept
* valueCodeableConcept 1..1 MS
* valueCodeableConcept from CRTopographyVS (required)

Profile: CRMorphologyObservation
Parent: Observation
Id: cr-morphology-observation
Title: "Morphology"
Description: "ICD-O-3 morphology code (4-digit histological type) of the neoplasm, e.g. 8500 = infiltrating duct carcinoma. Corresponds to the CR - Morphology data element in the DHIS2 Cancer Registry Tumor stage."
* status MS
* code = CRObservationCodesCS#morphology
* code ^short = "Morphology"
* subject 1..1 MS
* subject only Reference(CRPatient)
* encounter 1..1 MS
* encounter only Reference(CRTumorEncounter)
* value[x] only CodeableConcept
* valueCodeableConcept 1..1 MS
* valueCodeableConcept from CRMorphology4VS (required)

Profile: CRBehaviourObservation
Parent: Observation
Id: cr-behaviour-observation
Title: "Behaviour"
Description: "ICD-O-3 behaviour code of the neoplasm: 0=benign, 1=uncertain, 2=in situ, 3=malignant (primary site). Corresponds to the CR - Behaviour data element in the DHIS2 Cancer Registry Tumor stage."
* status MS
* code = CRObservationCodesCS#behaviour
* code ^short = "Behaviour"
* subject 1..1 MS
* subject only Reference(CRPatient)
* encounter 1..1 MS
* encounter only Reference(CRTumorEncounter)
* value[x] only CodeableConcept
* valueCodeableConcept 1..1 MS
* valueCodeableConcept from CRBehaviourVS (required)

Profile: CRGradeObservation
Parent: Observation
Id: cr-grade-observation
Title: "Histological Grade"
Description: "Histological grade (differentiation) of the tumour as defined in ICD-O-3. LOINC 33732-9. Grade codes: 1=well differentiated, 2=moderately differentiated, 3=poorly differentiated, 4=undifferentiated, 5–8=lymphomas/leukaemias, 9=not determined. Corresponds to the CR - Grade data element in the DHIS2 Cancer Registry Tumor stage."
* status MS
* code = $loinc#33732-9
* code ^short = "LOINC 33732-9: Histology grade [Identifier] in Cancer specimen"
* subject 1..1 MS
* subject only Reference(CRPatient)
* encounter 1..1 MS
* encounter only Reference(CRTumorEncounter)
* value[x] only CodeableConcept
* valueCodeableConcept 1..1 MS
* valueCodeableConcept from CRGradeVS (required)

Profile: CRBasisOfDiagnosisObservation
Parent: Observation
Id: cr-basis-of-diagnosis-observation
Title: "Basis of Diagnosis"
Description: "How the cancer diagnosis was established, coded according to the ICD-O-3 basis of diagnosis classification (codes 0–9). Corresponds to the CR - Basis diagnosis data element in the DHIS2 Cancer Registry Tumor stage."
* status MS
* code = CRObservationCodesCS#basis-of-diagnosis
* code ^short = "Basis of Diagnosis"
* subject 1..1 MS
* subject only Reference(CRPatient)
* encounter 1..1 MS
* encounter only Reference(CRTumorEncounter)
* value[x] only CodeableConcept
* valueCodeableConcept 1..1 MS
* valueCodeableConcept from CRBasisDiagnosisVS (required)

Profile: CRSiteObservation
Parent: Observation
Id: cr-site-observation
Title: "Site"
Description: "Higher-level anatomical site grouping derived from the ICD-O-3 topography. Corresponds to the CR - Site data element in the DHIS2 Cancer Registry Tumor stage."
* status MS
* code = CRObservationCodesCS#site
* code ^short = "Site"
* subject 1..1 MS
* subject only Reference(CRPatient)
* encounter 1..1 MS
* encounter only Reference(CRTumorEncounter)
* value[x] only CodeableConcept
* valueCodeableConcept 1..1 MS
* valueCodeableConcept from CRSiteVS (required)

Profile: CRIncidenceDateObservation
Parent: Observation
Id: cr-incidence-date-observation
Title: "Incidence Date"
Description: "Date of incidence (diagnosis date) of the cancer case. Corresponds to the CR - Incidence date data element in the DHIS2 Cancer Registry Tumor stage."
* status MS
* code = CRObservationCodesCS#incidence-date
* code ^short = "Incidence Date"
* subject 1..1 MS
* subject only Reference(CRPatient)
* encounter 1..1 MS
* encounter only Reference(CRTumorEncounter)
* value[x] only dateTime
* valueDateTime 1..1 MS

Profile: CRAgeAtIncidenceObservation
Parent: Observation
Id: cr-age-at-incidence-observation
Title: "Age at Incidence"
Description: "Age of the patient at the date of incidence. Corresponds to the CR - Age data element in the DHIS2 Cancer Registry Tumor stage."
* status MS
* code = CRObservationCodesCS#age-at-incidence
* code ^short = "Age at Incidence"
* subject 1..1 MS
* subject only Reference(CRPatient)
* encounter 1..1 MS
* encounter only Reference(CRTumorEncounter)
* value[x] only integer
* valueInteger 1..1 MS

Profile: CRAddressObservation
Parent: Observation
Id: cr-address-observation
Title: "Address"
Description: "Administrative address code of the patient at incidence. Country-specific — must be localised. Corresponds to the CR - Address data element in the DHIS2 Cancer Registry Tumor stage."
* status MS
* code = CRObservationCodesCS#address
* code ^short = "Address"
* subject 1..1 MS
* subject only Reference(CRPatient)
* encounter 1..1 MS
* encounter only Reference(CRTumorEncounter)
* value[x] only CodeableConcept
* valueCodeableConcept 1..1 MS
* valueCodeableConcept from CRAddressVS (extensible)

Profile: CRTumorNumberObservation
Parent: Observation
Id: cr-tumor-number-observation
Title: "Tumor Number"
Description: "Sequential tumor number within the patient's registration (1–10). Corresponds to the CR - Tumor number data element in the DHIS2 Cancer Registry Tumor stage."
* status MS
* code = CRObservationCodesCS#tumor-number
* code ^short = "Tumor Number"
* subject 1..1 MS
* subject only Reference(CRPatient)
* encounter 1..1 MS
* encounter only Reference(CRTumorEncounter)
* value[x] only CodeableConcept
* valueCodeableConcept 1..1 MS
* valueCodeableConcept from CRTumorNumberVS (required)
