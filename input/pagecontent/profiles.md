This page documents the manually authored FHIR resource profiles, mappings, and examples in this implementation guide. These artifacts define how the DHIS2 Cancer Registry (CanReg5) tracker programme maps to standard FHIR resources using an **Encounter-based architecture**.

For the auto-generated artifacts (logical models, questionnaires, code systems, and value sets derived from the DHIS2 Cancer Registry metadata package), see the [Artifact Index](artifacts.html).

### Generated vs Authored Artifacts

This IG contains two categories of artifacts:

| Category      | Source                 | Location                                                   | Description                                                                                                                                                                               |
| ------------- | ---------------------- | ---------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| **Generated** | DHIS2 IG generator app | `models/`, `codesystems/`, `valuesets/`, `questionnaires/` | Logical models, code systems, value sets, and questionnaires derived directly from the DHIS2 Cancer Registry metadata package. These represent the DHIS2 Tracker program structure as-is. |
| **Authored**  | Manual                 | `profiles/`, `examples/`, `mappings/`, `maps/`             | FHIR resource profiles, example instances, conceptual FSH mappings, and FML StructureMaps that define how CanReg5 cancer registration data maps to standard FHIR resources.               |

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

- **EpisodeOfCare** groups the entire cancer registration case and all encounters
- **Encounter** represents each programme stage event, typed by a local code system
- **Observation** captures each individual data element within its encounter context
- **Extension** is used sparingly — only where a concept is registry metadata rather than a clinical observation (e.g. the IARC rare tumor classification flag)

### Design Decisions

| Decision                              | Rationale                                                                                                                                                                                            |
| ------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| **Encounter per stage event**         | Preserves DHIS2 Tracker's repeatable event structure. Each Tumor, Source, or Follow-up stage event is a distinct Encounter, allowing multiple tumours, multiple sources, and longitudinal follow-up. |
| **All data elements as Observations** | Uniform, predictable mapping. Even concepts like morphology and behaviour (which mCODE puts on Condition) are Observations here, matching the flat data-element structure of DHIS2.                  |
| **LOINC where available**             | Histological grade uses LOINC `33732-9`. CanReg5-specific concepts use a local code system (`CRObservationCodesCS`).                                                                                 |
| **No US Core / mCODE dependency**     | Jurisdiction-neutral profiles suitable for global deployment.                                                                                                                                        |
| **REGNO invariant**                   | Patient identifier must be ≥8 characters, matching the CanReg5 pattern `CURRENT_DATE(yyyy)+SEQUENTIAL(####)`.                                                                                        |

### Resource Profiles

#### Patient

| Profile                                          | Base    | Description                                                                                     |
| ------------------------------------------------ | ------- | ----------------------------------------------------------------------------------------------- |
| [CRPatient](StructureDefinition-cr-patient.html) | Patient | CanReg5 patient with required REGNO identifier (≥8 chars), family name, gender, and birth date. |

#### EpisodeOfCare

| Profile                                                                                | Base          | Description                                                          |
| -------------------------------------------------------------------------------------- | ------------- | -------------------------------------------------------------------- |
| [CRCancerRegistrationEpisode](StructureDefinition-cr-cancer-registration-episode.html) | EpisodeOfCare | Overall cancer registration enrollment. Groups all stage encounters. |

#### Encounters

| Profile                                                               | Base      | Type Code   | Description                     |
| --------------------------------------------------------------------- | --------- | ----------- | ------------------------------- |
| [CRTumorEncounter](StructureDefinition-cr-tumor-encounter.html)       | Encounter | `tumor`     | Tumour registration stage event |
| [CRSourceEncounter](StructureDefinition-cr-source-encounter.html)     | Encounter | `source`    | Source/notification stage event |
| [CRFollowUpEncounter](StructureDefinition-cr-followup-encounter.html) | Encounter | `follow-up` | Follow-up stage event           |

All encounters reference the patient (`subject`) and the episode of care (`episodeOfCare`).

The CRTumorEncounter also supports the [CRRareExtension](StructureDefinition-cr-rare.html) — a boolean flag indicating whether the tumor has been classified as rare according to IARC reference tables.

#### Observations — Tumor Stage

| Profile                                                                                     | Base        | Code                 | Value Type      | Description                                    |
| ------------------------------------------------------------------------------------------- | ----------- | -------------------- | --------------- | ---------------------------------------------- |
| [CRTopographyObservation](StructureDefinition-cr-topography-observation.html)               | Observation | `topography`         | CodeableConcept | ICD-O-3 topography (anatomical site)           |
| [CRMorphologyObservation](StructureDefinition-cr-morphology-observation.html)               | Observation | `morphology`         | CodeableConcept | ICD-O-3 morphology (4-digit histological type) |
| [CRBehaviourObservation](StructureDefinition-cr-behaviour-observation.html)                 | Observation | `behaviour`          | CodeableConcept | ICD-O-3 behaviour (0–3)                        |
| [CRGradeObservation](StructureDefinition-cr-grade-observation.html)                         | Observation | LOINC `33732-9`      | CodeableConcept | Histological grade (1–9)                       |
| [CRBasisOfDiagnosisObservation](StructureDefinition-cr-basis-of-diagnosis-observation.html) | Observation | `basis-of-diagnosis` | CodeableConcept | How the diagnosis was established (0–9)        |
| [CRSiteObservation](StructureDefinition-cr-site-observation.html)                           | Observation | `site`               | CodeableConcept | Higher-level anatomical site grouping          |
| [CRIncidenceDateObservation](StructureDefinition-cr-incidence-date-observation.html)        | Observation | `incidence-date`     | dateTime        | Date of incidence (diagnosis date)             |
| [CRAgeAtIncidenceObservation](StructureDefinition-cr-age-at-incidence-observation.html)     | Observation | `age-at-incidence`   | integer         | Age at incidence                               |
| [CRAddressObservation](StructureDefinition-cr-address-observation.html)                     | Observation | `address`            | CodeableConcept | Administrative address at incidence            |
| [CRTumorNumberObservation](StructureDefinition-cr-tumor-number-observation.html)            | Observation | `tumor-number`       | CodeableConcept | Sequential tumour number (1–10)                |

#### Observations — Source Stage

| Profile                                                                                       | Base        | Code                  | Value Type      | Description                         |
| --------------------------------------------------------------------------------------------- | ----------- | --------------------- | --------------- | ----------------------------------- |
| [CRSourceTypeObservation](StructureDefinition-cr-source-type-observation.html)                | Observation | `source-type`         | CodeableConcept | Type of documentation source        |
| [CRSourceTumorNumberObservation](StructureDefinition-cr-source-tumor-number-observation.html) | Observation | `source-tumor-number` | CodeableConcept | Tumour number the source relates to |

#### Observations — Follow-up Stage

| Profile                                                                           | Base        | Code            | Value Type      | Description                         |
| --------------------------------------------------------------------------------- | ----------- | --------------- | --------------- | ----------------------------------- |
| [CRVitalStatusObservation](StructureDefinition-cr-vital-status-observation.html)  | Observation | `vital-status`  | CodeableConcept | Vital status (alive, dead, unknown) |
| [CRDateOfDeathObservation](StructureDefinition-cr-date-of-death-observation.html) | Observation | `date-of-death` | dateTime        | Date of death                       |

### Extensions

| Extension | Context | Type | Description |
| --- | --- | --- | --- |
| [CRRareExtension](StructureDefinition-cr-rare.html) | CRTumorEncounter | boolean | IARC rare tumor classification flag. Computed from the topography-morphology combination evaluated against rare cancer reference tables. Corresponds to the CR - Rare data element. |

### Terminology

Two local code systems support the Encounter-based architecture:

| Code System                                                  | Id                     | Description                                          |
| ------------------------------------------------------------ | ---------------------- | ---------------------------------------------------- |
| [CREncounterTypeCS](CodeSystem-CREncounterTypeCS.html)       | `cr-encounter-type`    | Encounter type codes: `tumor`, `source`, `follow-up` |
| [CRObservationCodesCS](CodeSystem-CRObservationCodesCS.html) | `cr-observation-codes` | Observation type codes for each CanReg5 data element |

### Mappings

Each logical model includes conceptual FSH mappings from every data element to the corresponding FHIR resource and path. These are visible in the **Mappings** tab of each logical model's page in the published IG.

Executable FML StructureMaps are also provided:

| StructureMap                                                                               | Source → Target                | Description                                          |
| ------------------------------------------------------------------------------------------ | ------------------------------ | ---------------------------------------------------- |
| [CancerRegistryToPatient](StructureMap-CancerRegistryToPatient.html)                       | CancerRegistry → Patient       | Enrollment TEAs → CRPatient                          |
| [CancerRegistryToEpisode](StructureMap-CancerRegistryToEpisode.html)                       | CancerRegistry → EpisodeOfCare | Enrollment → CRCancerRegistrationEpisode             |
| [TumorToEncounterAndObservations](StructureMap-TumorToEncounterAndObservations.html)       | Tumor → Bundle                 | Tumor event → CRTumorEncounter + Observations        |
| [SourceToEncounterAndObservations](StructureMap-SourceToEncounterAndObservations.html)     | Source → Bundle                | Source event → CRSourceEncounter + Observations      |
| [FollowUpToEncounterAndObservations](StructureMap-FollowUpToEncounterAndObservations.html) | FollowUp → Bundle              | Follow-up event → CRFollowUpEncounter + Observations |

The stage-level FML maps produce a FHIR transaction `Bundle` containing the Encounter and all its Observations. Subject and encounter references must be resolved by the orchestrating mapping engine.

### Examples

A complete example scenario demonstrates a 54-year-old female patient with breast carcinoma:

| Example                                                                         | Profile                        | Description                                     |
| ------------------------------------------------------------------------------- | ------------------------------ | ----------------------------------------------- |
| [ExampleCRPatient](Patient-ExampleCRPatient.html)                               | CRPatient                      | Jane Doe, female, born 1970-03-15, REGNO 20240001 |
| [ExampleCRRegistrationEpisode](EpisodeOfCare-ExampleCRRegistrationEpisode.html) | CRCancerRegistrationEpisode    | Active registration episode from 2026-01-01     |
| [ExampleTumorEncounter](Encounter-ExampleTumorEncounter.html)                   | CRTumorEncounter               | Tumor stage encounter, rare=false               |
| [ExampleTopography](Observation-ExampleTopography.html)                         | CRTopographyObservation        | 504 — Upper-outer quadrant of breast            |
| [ExampleMorphology](Observation-ExampleMorphology.html)                         | CRMorphologyObservation        | 8500 — Infiltrating duct carcinoma              |
| [ExampleBehaviour](Observation-ExampleBehaviour.html)                           | CRBehaviourObservation         | 3 — Malignant, primary site                     |
| [ExampleGrade](Observation-ExampleGrade.html)                                   | CRGradeObservation             | Grade II — moderately differentiated            |
| [ExampleBasisOfDiagnosis](Observation-ExampleBasisOfDiagnosis.html)             | CRBasisOfDiagnosisObservation  | 7 — Histology of primary                        |
| [ExampleSite](Observation-ExampleSite.html)                                     | CRSiteObservation              | 50 — Breast                                     |
| [ExampleIncidenceDate](Observation-ExampleIncidenceDate.html)                   | CRIncidenceDateObservation     | 2026-01-01                                      |
| [ExampleAgeAtIncidence](Observation-ExampleAgeAtIncidence.html)                 | CRAgeAtIncidenceObservation    | 54 years                                        |
| [ExampleTumorNumber](Observation-ExampleTumorNumber.html)                       | CRTumorNumberObservation       | Tumour 01                                       |
| [ExampleSourceEncounter](Encounter-ExampleSourceEncounter.html)                 | CRSourceEncounter              | Source stage encounter                          |
| [ExampleSourceType](Observation-ExampleSourceType.html)                         | CRSourceTypeObservation        | Hospital pathology department                   |
| [ExampleSourceTumorNumber](Observation-ExampleSourceTumorNumber.html)           | CRSourceTumorNumberObservation | Relates to tumour 01                            |
| [ExampleFollowUpEncounter](Encounter-ExampleFollowUpEncounter.html)             | CRFollowUpEncounter            | 6-month follow-up                               |
| [ExampleVitalStatus](Observation-ExampleVitalStatus.html)                       | CRVitalStatusObservation       | Alive                                           |
