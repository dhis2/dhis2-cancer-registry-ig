# Profiles & Mappings - DHIS2 Cancer Registry Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* **Profiles & Mappings**

## Profiles & Mappings

This page documents the manually authored FHIR resource profiles, mappings, and examples in this implementation guide. These artifacts define how the DHIS2 Cancer Registry (CanReg5) tracker programme maps to standard FHIR resources using an **Encounter-based architecture**.

For the auto-generated artifacts (logical models, questionnaires, code systems, and value sets derived from the DHIS2 Cancer Registry metadata package), see the [Artifact Index](artifacts.md).

### Generated vs Authored Artifacts

This IG contains two categories of artifacts:

| | | | |
| :--- | :--- | :--- | :--- |
| **Generated** | DHIS2 IG generator app | `models/`,`codesystems/`,`valuesets/`,`questionnaires/` | Logical models, code systems, value sets, and questionnaires derived directly from the DHIS2 Cancer Registry metadata package. These represent the DHIS2 Tracker program structure as-is. |
| **Authored** | Manual | `profiles/`,`examples/`,`mappings/`,`maps/` | FHIR resource profiles, example instances, conceptual FSH mappings, and FML StructureMaps that define how CanReg5 cancer registration data maps to standard FHIR resources. |

### Architecture

The profiling approach maps the DHIS2 Tracker programme structure directly to FHIR's workflow resources:

```
DHIS2 Tracker                    FHIR R4
═══════════════                  ═══════════════════════════════════════
Programme enrollment   ────►     CRPatient + CRCancerRegistrationEpisode
                                     (Patient)     (EpisodeOfCare)

Tumor stage event      ────►     CRTumorEncounter (Encounter)
  ├─ data element      ────►       └─ Observation (one per data element)
  ├─ data element      ────►       └─ Observation
  └─ ...               ────►       └─ ...

Source stage event     ────►     CRSourceEncounter (Encounter)
  ├─ data element      ────►       └─ Observation
  └─ ...               ────►       └─ ...

Follow-up stage event  ────►     CRFollowUpEncounter (Encounter)
  ├─ data element      ────►       └─ Observation
  └─ ...               ────►       └─ ...

```

This 1:1 structural mapping preserves the repeatable stage event semantics of DHIS2 Tracker while following FHIR best practices:

* **EpisodeOfCare** groups the entire cancer registration case and all encounters
* **Encounter** represents each programme stage event, typed by a local code system
* **Observation** captures each individual data element within its encounter context
*  

| |
| :--- |
| **Extension**is used sparingly — only where a concept is registry metadata rather than a clinical observation (e.g. the IARC rare tumor classification flag) |

 

### Resource Profiles

#### Patient

| | | |
| :--- | :--- | :--- |
| [CRPatient](StructureDefinition-cr-patient.md) | Patient | CanReg5 patient with required REGNO identifier (≥8 chars), family name, gender, and birth date. |

#### EpisodeOfCare

| | | |
| :--- | :--- | :--- |
| [CRCancerRegistrationEpisode](StructureDefinition-cr-cancer-registration-episode.md) | EpisodeOfCare | Overall cancer registration enrollment. Groups all stage encounters. |

#### Encounters

| | | | |
| :--- | :--- | :--- | :--- |
| [CRTumorEncounter](StructureDefinition-cr-tumor-encounter.md) | Encounter | `tumor` | Tumour registration stage event |
| [CRSourceEncounter](StructureDefinition-cr-source-encounter.md) | Encounter | `source` | Source/notification stage event |
| [CRFollowUpEncounter](StructureDefinition-cr-followup-encounter.md) | Encounter | `follow-up` | Follow-up stage event |

All encounters reference the patient (`subject`) and the episode of care (`episodeOfCare`).

The CRTumorEncounter also supports the [CRRareExtension](StructureDefinition-cr-rare.md) — a boolean flag indicating whether the tumor has been classified as rare according to IARC reference tables.

#### Observations — Tumor Stage

| | | | | |
| :--- | :--- | :--- | :--- | :--- |
| [CRTopographyObservation](StructureDefinition-cr-topography-observation.md) | Observation | `topography` | CodeableConcept | ICD-O-3 topography (anatomical site) |
| [CRMorphologyObservation](StructureDefinition-cr-morphology-observation.md) | Observation | `morphology` | CodeableConcept | ICD-O-3 morphology (4-digit histological type) |
| [CRBehaviourObservation](StructureDefinition-cr-behaviour-observation.md) | Observation | `behaviour` | CodeableConcept | ICD-O-3 behaviour (0–3) |
| [CRGradeObservation](StructureDefinition-cr-grade-observation.md) | Observation | LOINC`33732-9` | CodeableConcept | Histological grade (1–9) |
| [CRBasisOfDiagnosisObservation](StructureDefinition-cr-basis-of-diagnosis-observation.md) | Observation | `basis-of-diagnosis` | CodeableConcept | How the diagnosis was established (0–9) |
| [CRSiteObservation](StructureDefinition-cr-site-observation.md) | Observation | `site` | CodeableConcept | Higher-level anatomical site grouping |
| [CRIncidenceDateObservation](StructureDefinition-cr-incidence-date-observation.md) | Observation | `incidence-date` | dateTime | Date of incidence (diagnosis date) |
| [CRAgeAtIncidenceObservation](StructureDefinition-cr-age-at-incidence-observation.md) | Observation | `age-at-incidence` | integer | Age at incidence |
| [CRAddressObservation](StructureDefinition-cr-address-observation.md) | Observation | `address` | CodeableConcept | Administrative address at incidence |
| [CRTumorNumberObservation](StructureDefinition-cr-tumor-number-observation.md) | Observation | `tumor-number` | CodeableConcept | Sequential tumour number (1–10) |

#### Observations — Source Stage

| | | | | |
| :--- | :--- | :--- | :--- | :--- |
| [CRSourceTypeObservation](StructureDefinition-cr-source-type-observation.md) | Observation | `source-type` | CodeableConcept | Type of documentation source |
| [CRSourceTumorNumberObservation](StructureDefinition-cr-source-tumor-number-observation.md) | Observation | `source-tumor-number` | CodeableConcept | Tumour number the source relates to |

#### Observations — Follow-up Stage

| | | | | |
| :--- | :--- | :--- | :--- | :--- |
| [CRVitalStatusObservation](StructureDefinition-cr-vital-status-observation.md) | Observation | `vital-status` | CodeableConcept | Vital status (alive, dead, unknown) |
| [CRDateOfDeathObservation](StructureDefinition-cr-date-of-death-observation.md) | Observation | `date-of-death` | dateTime | Date of death |

### Extensions

| | | | |
| :--- | :--- | :--- | :--- |
| [CRRareExtension](StructureDefinition-cr-rare.md) | CRTumorEncounter | boolean | IARC rare tumor classification flag. Computed from the topography-morphology combination evaluated against rare cancer reference tables. Corresponds to the CR - Rare data element. |

### Terminology

Two local code systems support the Encounter-based architecture:

| | | |
| :--- | :--- | :--- |
| [CREncounterTypeCS](CodeSystem-CREncounterTypeCS.md) | `cr-encounter-type` | Encounter type codes:`tumor`,`source`,`follow-up` |
| [CRObservationCodesCS](CodeSystem-CRObservationCodesCS.md) | `cr-observation-codes` | Observation type codes for each CanReg5 data element |

### Mappings

Each logical model includes conceptual FSH mappings from every data element to the corresponding FHIR resource and path. These are visible in the **Mappings** tab of each logical model's page in the published IG.

Executable FML StructureMaps are also provided:

| | | |
| :--- | :--- | :--- |
| [CancerRegistryToPatient](StructureMap-CancerRegistryToPatient.md) | CancerRegistry → Patient | Enrollment TEAs → CRPatient |
| [CancerRegistryToEpisode](StructureMap-CancerRegistryToEpisode.md) | CancerRegistry → EpisodeOfCare | Enrollment → CRCancerRegistrationEpisode |
| [TumorToEncounterAndObservations](StructureMap-TumorToEncounterAndObservations.md) | Tumor → Bundle | Tumor event → CRTumorEncounter + Observations |
| [SourceToEncounterAndObservations](StructureMap-SourceToEncounterAndObservations.md) | Source → Bundle | Source event → CRSourceEncounter + Observations |
| [FollowUpToEncounterAndObservations](StructureMap-FollowUpToEncounterAndObservations.md) | FollowUp → Bundle | Follow-up event → CRFollowUpEncounter + Observations |

The stage-level FML maps produce a FHIR transaction `Bundle` containing the Encounter and all its Observations. Subject and encounter references must be resolved by the orchestrating mapping engine.

### Examples

A complete example scenario demonstrates a 54-year-old female patient with breast carcinoma:

| | | |
| :--- | :--- | :--- |
| [ExampleCRPatient](Patient-ExampleCRPatient.md) | CRPatient | Jane Doe, female, born 1970-03-15, REGNO 20240001 |
| [ExampleCRRegistrationEpisode](EpisodeOfCare-ExampleCRRegistrationEpisode.md) | CRCancerRegistrationEpisode | Active registration episode from 2026-01-01 |
| [ExampleTumorEncounter](Encounter-ExampleTumorEncounter.md) | CRTumorEncounter | Tumor stage encounter, rare=false |
| [ExampleTopography](Observation-ExampleTopography.md) | CRTopographyObservation | 504 — Upper-outer quadrant of breast |
| [ExampleMorphology](Observation-ExampleMorphology.md) | CRMorphologyObservation | 8500 — Infiltrating duct carcinoma |
| [ExampleBehaviour](Observation-ExampleBehaviour.md) | CRBehaviourObservation | 3 — Malignant, primary site |
| [ExampleGrade](Observation-ExampleGrade.md) | CRGradeObservation | Grade II — moderately differentiated |
| [ExampleBasisOfDiagnosis](Observation-ExampleBasisOfDiagnosis.md) | CRBasisOfDiagnosisObservation | 7 — Histology of primary |
| [ExampleSite](Observation-ExampleSite.md) | CRSiteObservation | 50 — Breast |
| [ExampleIncidenceDate](Observation-ExampleIncidenceDate.md) | CRIncidenceDateObservation | 2026-01-01 |
| [ExampleAgeAtIncidence](Observation-ExampleAgeAtIncidence.md) | CRAgeAtIncidenceObservation | 54 years |
| [ExampleTumorNumber](Observation-ExampleTumorNumber.md) | CRTumorNumberObservation | Tumour 01 |
| [ExampleSourceEncounter](Encounter-ExampleSourceEncounter.md) | CRSourceEncounter | Source stage encounter |
| [ExampleSourceType](Observation-ExampleSourceType.md) | CRSourceTypeObservation | Hospital pathology department |
| [ExampleSourceTumorNumber](Observation-ExampleSourceTumorNumber.md) | CRSourceTumorNumberObservation | Relates to tumour 01 |
| [ExampleFollowUpEncounter](Encounter-ExampleFollowUpEncounter.md) | CRFollowUpEncounter | 6-month follow-up |
| [ExampleVitalStatus](Observation-ExampleVitalStatus.md) | CRVitalStatusObservation | Alive |

