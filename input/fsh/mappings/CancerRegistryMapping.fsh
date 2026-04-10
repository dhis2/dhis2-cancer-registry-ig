Mapping: CancerRegistryToCRPatient
Source: CancerRegistry
Target: "https://dhis2.org/fhir/cancer-registry/StructureDefinition/cr-patient"
Id: cancer-registry-to-cr-patient
Title: "Mapping: Cancer Registry → Patient"
Description: "Maps the DHIS2 Cancer Registry enrollment tracked-entity attributes to the Patient FHIR profile."
* crPatientId -> "Patient.identifier.where(type.coding.code='MR').value"
* familyName -> "Patient.name.family"
* givenName -> "Patient.name.given"
* crSex -> "Patient.gender" "Sex codes: 1=male, 2=female, 9=unknown → FHIR: male, female, unknown"
* dateOfBirth -> "Patient.birthDate"

Mapping: CancerRegistryToEpisode
Source: CancerRegistry
Target: "https://dhis2.org/fhir/cancer-registry/StructureDefinition/cr-cancer-registration-episode"
Id: cancer-registry-to-episode
Title: "Mapping: Cancer Registry → EpisodeOfCare"
Description: "Maps the DHIS2 Cancer Registry enrollment to a CRCancerRegistrationEpisode that groups all stage encounters."
* crPatientId -> "EpisodeOfCare.patient" "Reference to the CRPatient"
* tumor -> "EpisodeOfCare.diagnosis" "Each tumor stage event → a CRTumorEncounter linked via episodeOfCare"
* source -> "EpisodeOfCare" "Each source event → a CRSourceEncounter linked via episodeOfCare"
* followUp -> "EpisodeOfCare" "Each follow-up event → a CRFollowUpEncounter linked via episodeOfCare"

Mapping: TumorToTumorEncounter
Source: Tumor
Target: "https://dhis2.org/fhir/cancer-registry/StructureDefinition/cr-tumor-encounter"
Id: tumor-to-tumor-encounter
Title: "Mapping: Tumor → CRTumorEncounter"
Description: "Maps the DHIS2 Cancer Registry Tumor stage event to a CRTumorEncounter. Individual data elements become Observations referencing this encounter."
* crIncidenceDate -> "Encounter.period.start" "Also recorded as a CRIncidenceDateObservation"
* crRare -> "Encounter.extension('https://dhis2.org/fhir/cancer-registry/StructureDefinition/cr-rare').valueBoolean" "Rare tumor classification flag"

Mapping: TumorToTopography
Source: Tumor
Target: "https://dhis2.org/fhir/cancer-registry/StructureDefinition/cr-topography-observation"
Id: tumor-to-topography
Title: "Mapping: Tumor crTopography → Topography Observation"
Description: "Maps the CR - Topography data element to a CRTopographyObservation."
* crTopography -> "Observation.valueCodeableConcept"

Mapping: TumorToMorphology
Source: Tumor
Target: "https://dhis2.org/fhir/cancer-registry/StructureDefinition/cr-morphology-observation"
Id: tumor-to-morphology
Title: "Mapping: Tumor crMorphology → Morphology Observation"
Description: "Maps the CR - Morphology data element to a CRMorphologyObservation."
* crMorphology -> "Observation.valueCodeableConcept"

Mapping: TumorToBehaviour
Source: Tumor
Target: "https://dhis2.org/fhir/cancer-registry/StructureDefinition/cr-behaviour-observation"
Id: tumor-to-behaviour
Title: "Mapping: Tumor crBehaviour → Behaviour Observation"
Description: "Maps the CR - Behaviour data element to a CRBehaviourObservation."
* crBehaviour -> "Observation.valueCodeableConcept"

Mapping: TumorToGrade
Source: Tumor
Target: "https://dhis2.org/fhir/cancer-registry/StructureDefinition/cr-grade-observation"
Id: tumor-to-grade
Title: "Mapping: Tumor crGrade → Grade Observation"
Description: "Maps the CR - Grade data element to a CRGradeObservation (LOINC 33732-9)."
* crGrade -> "Observation.valueCodeableConcept"

Mapping: TumorToBasisDiagnosis
Source: Tumor
Target: "https://dhis2.org/fhir/cancer-registry/StructureDefinition/cr-basis-of-diagnosis-observation"
Id: tumor-to-basis-diagnosis
Title: "Mapping: Tumor crBasisDiagnosis → Basis of Diagnosis Observation"
Description: "Maps the CR - Basis diagnosis data element to a CRBasisOfDiagnosisObservation."
* crBasisDiagnosis -> "Observation.valueCodeableConcept"

Mapping: TumorToSite
Source: Tumor
Target: "https://dhis2.org/fhir/cancer-registry/StructureDefinition/cr-site-observation"
Id: tumor-to-site
Title: "Mapping: Tumor crSite → Site Observation"
Description: "Maps the CR - Site data element to a CRSiteObservation."
* crSite -> "Observation.valueCodeableConcept"

Mapping: TumorToIncidenceDate
Source: Tumor
Target: "https://dhis2.org/fhir/cancer-registry/StructureDefinition/cr-incidence-date-observation"
Id: tumor-to-incidence-date
Title: "Mapping: Tumor crIncidenceDate → Incidence Date Observation"
Description: "Maps the CR - Incidence date data element to a CRIncidenceDateObservation."
* crIncidenceDate -> "Observation.valueDateTime"

Mapping: TumorToAgeAtIncidence
Source: Tumor
Target: "https://dhis2.org/fhir/cancer-registry/StructureDefinition/cr-age-at-incidence-observation"
Id: tumor-to-age-at-incidence
Title: "Mapping: Tumor crAge → Age at Incidence Observation"
Description: "Maps the CR - Age data element to a CRAgeAtIncidenceObservation."
* crAge -> "Observation.valueInteger"

Mapping: TumorToAddress
Source: Tumor
Target: "https://dhis2.org/fhir/cancer-registry/StructureDefinition/cr-address-observation"
Id: tumor-to-address
Title: "Mapping: Tumor crAddress → Address Observation"
Description: "Maps the CR - Address data element to a CRAddressObservation."
* crAddress -> "Observation.valueCodeableConcept"

Mapping: TumorToTumorNumber
Source: Tumor
Target: "https://dhis2.org/fhir/cancer-registry/StructureDefinition/cr-tumor-number-observation"
Id: tumor-to-tumor-number
Title: "Mapping: Tumor crTumorNumber → Tumor Number Observation"
Description: "Maps the CR - Tumor number data element to a CRTumorNumberObservation."
* crTumorNumber -> "Observation.valueCodeableConcept"

Mapping: SourceToSourceEncounter
Source: Source
Target: "https://dhis2.org/fhir/cancer-registry/StructureDefinition/cr-source-encounter"
Id: source-to-source-encounter
Title: "Mapping: Source to CRSourceEncounter"
Description: "Maps the DHIS2 Cancer Registry Source stage event to a CRSourceEncounter."
* crSourceDate -> "Encounter.period.start"

Mapping: SourceToSourceType
Source: Source
Target: "https://dhis2.org/fhir/cancer-registry/StructureDefinition/cr-source-type-observation"
Id: source-to-source-type
Title: "Mapping: Source crSourceType to Source Type Observation"
Description: "Maps the CR - Source Type data element to a CRSourceTypeObservation."
* crSourceType -> "Observation.valueCodeableConcept"

Mapping: SourceToSourceTumorNumber
Source: Source
Target: "https://dhis2.org/fhir/cancer-registry/StructureDefinition/cr-source-tumor-number-observation"
Id: source-to-source-tumor-number
Title: "Mapping: Source crSourceTumorNumber to Source Tumor Number Observation"
Description: "Maps the CR - Source: Tumor number data element to a CRSourceTumorNumberObservation."
* crSourceTumorNumber -> "Observation.valueCodeableConcept"

Mapping: FollowUpToFollowUpEncounter
Source: FollowUp
Target: "https://dhis2.org/fhir/cancer-registry/StructureDefinition/cr-followup-encounter"
Id: followup-to-followup-encounter
Title: "Mapping: Follow-up to CRFollowUpEncounter"
Description: "Maps the DHIS2 Cancer Registry Follow-up stage event to a CRFollowUpEncounter."
* crDateLastContact -> "Encounter.period.start" "Date of last contact becomes the encounter date"

Mapping: FollowUpToVitalStatus
Source: FollowUp
Target: "https://dhis2.org/fhir/cancer-registry/StructureDefinition/cr-vital-status-observation"
Id: followup-to-vital-status
Title: "Mapping: Follow-up crStatus to Vital Status Observation"
Description: "Maps the CR - Status data element to a CRVitalStatusObservation."
* crStatus -> "Observation.valueCodeableConcept"
* crDateLastContact -> "Observation.effectiveDateTime" "Date of last contact used as observation effective date"

Mapping: FollowUpToDateOfDeath
Source: FollowUp
Target: "https://dhis2.org/fhir/cancer-registry/StructureDefinition/cr-date-of-death-observation"
Id: followup-to-date-of-death
Title: "Mapping: Follow-up crDateOfDeath to Date of Death Observation"
Description: "Maps the CR - Date of death data element to a CRDateOfDeathObservation."
* crDateOfDeath -> "Observation.valueDateTime"