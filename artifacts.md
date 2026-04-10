# Artifacts Summary - DHIS2 Cancer Registry Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* **Artifacts Summary**

## Artifacts Summary

This page provides a list of the FHIR artifacts defined as part of this implementation guide.

### Structures: Logical Models 

These define data models that represent the domain covered by this implementation guide in more business-friendly terms than the underlying FHIR resources.

| | |
| :--- | :--- |
| [Cancer Registry](StructureDefinition-CancerRegistry.md) | Enrollment of the DHIS2 Cancer Registry tracker program. Captures core patient demographic information required to register an individual in the cancer registry, aligned with the IARC standard data requirements for population-based cancer registration. The tracked entity type is 'Person'. The Patient ID is automatically generated at enrollment using the pattern CURRENT_DATE(yyyy)+SEQUENTIAL(####), following the CanReg5 convention. |
| [Follow up](StructureDefinition-FollowUp.md) | Follow-up stage of the DHIS2 Cancer Registry tracker program. This repeatable stage records the follow-up status of the registered patient over time, capturing the date of last contact, the vital status, and, in cases where the status is death, the date of death. This stage is not associated with a specific tumor or source. |
| [Source](StructureDefinition-Source.md) | Source stage of the DHIS2 Cancer Registry tracker program. This repeatable stage records the documentation sources from which a cancer case has been notified to the registry. Each source represents a piece of documentation, such as a hospital record, pathology report, or death certificate, that supports the registration of a specific tumor. Sources are linked to a specific tumor via the Tumor Number. |
| [Tumor](StructureDefinition-Tumor.md) | Tumor stage of the DHIS2 Cancer Registry tracker program. This repeatable stage is the central component capturing all key clinical and epidemiological information related to an individual cancer case. |

### Structures: Questionnaires 

These define forms used by systems conforming to this implementation guide to capture or expose data to end users.

| | |
| :--- | :--- |
| [Follow up Questionnaire](Questionnaire-FollowUpQuestionnaire.md) | Questionnaire for the Follow-up stage of the DHIS2 Cancer Registry tracker program. Records the follow-up status of registered patients over time, capturing the date of last contact, vital status, and date of death when applicable. This stage is not associated with a specific tumor or source. |
| [Source Questionnaire](Questionnaire-SourceQuestionnaire.md) | Questionnaire for the Source stage of the DHIS2 Cancer Registry tracker program. Records the documentation sources from which a cancer case has been notified to the registry. Each source represents a piece of documentation (such as a hospital record, pathology report, or death certificate) linked to a specific tumor via the Tumor Number. Contains a visible Source section and a hidden TUMOURIDSOURCETABLE section used for CanReg5 data extraction. |
| [Tumor Questionnaire](Questionnaire-TumorQuestionnaire.md) | Questionnaire for the Tumor stage of the DHIS2 Cancer Registry tracker program. This is the central data collection component, structured into sections: Patient (demographics and geographic information), Tumor (core variables aligned with CanReg5 ICD-O-3.2 standards including site, topography, morphology, behaviour, basis of diagnosis, and grade), Check Status (triggers for executing data quality checks), Checks (hidden section storing individual check results for rare/invalid classifications), Morphology Topography Check (hidden section for topography-morphology validation), Multiple Primary Tester (hidden section for duplicate/multiple primary determination), Rare Status (confirmation of flagged rare cases by authorised supervisors), and Tumor ID (hidden section supporting CanReg5 data extraction). |

### Structures: Resource Profiles 

These define constraints on FHIR resources for systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [Address](StructureDefinition-cr-address-observation.md) | Administrative address code of the patient at incidence. Country-specific — must be localised. Corresponds to the CR - Address data element in the DHIS2 Cancer Registry Tumor stage. |
| [Age at Incidence](StructureDefinition-cr-age-at-incidence-observation.md) | Age of the patient at the date of incidence. Corresponds to the CR - Age data element in the DHIS2 Cancer Registry Tumor stage. |
| [Basis of Diagnosis](StructureDefinition-cr-basis-of-diagnosis-observation.md) | How the cancer diagnosis was established, coded according to the ICD-O-3 basis of diagnosis classification (codes 0–9). Corresponds to the CR - Basis diagnosis data element in the DHIS2 Cancer Registry Tumor stage. |
| [Behaviour](StructureDefinition-cr-behaviour-observation.md) | ICD-O-3 behaviour code of the neoplasm: 0=benign, 1=uncertain, 2=in situ, 3=malignant (primary site). Corresponds to the CR - Behaviour data element in the DHIS2 Cancer Registry Tumor stage. |
| [Cancer Registration EpisodeOfCare](StructureDefinition-cr-cancer-registration-episode.md) | Episode of Care representing the overall enrollment of a patient in the cancer registry. Corresponds to the DHIS2 Cancer Registry tracker program enrollment. All stage-level Encounters (Tumor, Source, Follow-up) reference this episode. |
| [Cancer Registry Patient](StructureDefinition-cr-patient.md) | Minimum patient profile for CanReg5-aligned population-based cancer registration. Requires a patient registration number (REGNO) of at least 8 characters following the CanReg5 CURRENT_DATE(yyyy)+SEQUENTIAL(####) convention, family name, administrative sex, and date of birth. |
| [Date of Death](StructureDefinition-cr-date-of-death-observation.md) | Date of death of the cancer registry patient, recorded when the vital status is 'dead'. Corresponds to the CR - Date of death data element in the DHIS2 Cancer Registry Follow-up stage. |
| [Follow-up Encounter](StructureDefinition-cr-followup-encounter.md) | Encounter representing a single Follow-up stage event in the DHIS2 Cancer Registry tracker program. Each follow-up contact with a registered patient to ascertain vital status is recorded as a separate encounter. Observations within this encounter capture the vital status, date of last contact, and optional date of death. |
| [Histological Grade](StructureDefinition-cr-grade-observation.md) | Histological grade (differentiation) of the tumour as defined in ICD-O-3. LOINC 33732-9. Grade codes: 1=well differentiated, 2=moderately differentiated, 3=poorly differentiated, 4=undifferentiated, 5–8=lymphomas/leukaemias, 9=not determined. Corresponds to the CR - Grade data element in the DHIS2 Cancer Registry Tumor stage. |
| [Incidence Date](StructureDefinition-cr-incidence-date-observation.md) | Date of incidence (diagnosis date) of the cancer case. Corresponds to the CR - Incidence date data element in the DHIS2 Cancer Registry Tumor stage. |
| [Morphology](StructureDefinition-cr-morphology-observation.md) | ICD-O-3 morphology code (4-digit histological type) of the neoplasm, e.g. 8500 = infiltrating duct carcinoma. Corresponds to the CR - Morphology data element in the DHIS2 Cancer Registry Tumor stage. |
| [Site](StructureDefinition-cr-site-observation.md) | Higher-level anatomical site grouping derived from the ICD-O-3 topography. Corresponds to the CR - Site data element in the DHIS2 Cancer Registry Tumor stage. |
| [Source Notification Encounter](StructureDefinition-cr-source-encounter.md) | Encounter representing a single Source stage event in the DHIS2 Cancer Registry tracker program. Each documentation source (hospital record, pathology report, death certificate, etc.) that notifies the registry about a cancer case is recorded as a separate encounter. Observations within this encounter capture the source type and linked tumor number. |
| [Source Tumor Number](StructureDefinition-cr-source-tumor-number-observation.md) | Tumor number that this source notification relates to. Links the source to a specific tumor within the patient's registration. Corresponds to the CR - Source: Tumor number data element in the DHIS2 Cancer Registry Source stage. |
| [Source Type](StructureDefinition-cr-source-type-observation.md) | Type of documentation source that notified the cancer registry about a case (e.g. hospital, laboratory, death certificate). Country-specific — must be localised. Corresponds to the CR - Source Type data element in the DHIS2 Cancer Registry Source stage. |
| [Topography](StructureDefinition-cr-topography-observation.md) | ICD-O-3 topography code indicating the anatomical site of the primary tumour. Corresponds to the CR - Topography data element in the DHIS2 Cancer Registry Tumor stage. |
| [Tumor Number](StructureDefinition-cr-tumor-number-observation.md) | Sequential tumor number within the patient's registration (1–10). Corresponds to the CR - Tumor number data element in the DHIS2 Cancer Registry Tumor stage. |
| [Tumor Registration Encounter](StructureDefinition-cr-tumor-encounter.md) | Encounter representing a single Tumor stage event in the DHIS2 Cancer Registry tracker program. Each time a tumour is registered for a patient, a new Encounter of this type is created. Observations for each data element (topography, morphology, behaviour, grade, basis of diagnosis, etc.) reference this Encounter. |
| [Vital Status](StructureDefinition-cr-vital-status-observation.md) | Follow-up vital status of the registered cancer patient (alive, dead, or unknown). Corresponds to the CR - Status data element in the DHIS2 Cancer Registry Follow-up stage. |

### Structures: Extension Definitions 

These define constraints on FHIR data types for systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [Rare Tumor Classification](StructureDefinition-cr-rare.md) | Indicates whether the registered tumor has been classified as rare according to the IARC/CanReg5 data quality checks. This is a computed flag derived from the topography-morphology combination evaluated against the IARC rare cancer reference tables. Corresponds to the CR - Rare data element in the DHIS2 Cancer Registry Tumor stage. |

### Terminology: Value Sets 

These define sets of codes used by systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [CR - Address value set](ValueSet-CRAddressVS.md) | Value set of address codes containing placeholder values that must be customised prior to implementation to reflect the administrative geography of the country or region. |
| [CR - Basis diagnosis value set](ValueSet-CRBasisDiagnosisVS.md) | Value set of basis of diagnosis codes aligned with the CanReg5 basis dictionary. Codes 0-4 are non-microscopically confirmed, codes 5-8 are microscopically confirmed, and code 9 is unknown. |
| [CR - Behaviour value set](ValueSet-CRBehaviourVS.md) | Value set of tumour behaviour codes aligned with the CanReg5 ICD-O-3.2 behaviour dictionary, used in the Tumor stage to classify the biological behaviour of the neoplasm. |
| [CR - Grade value set](ValueSet-CRGradeVS.md) | Value set of tumour grade and differentiation codes aligned with the CanReg5 ICD-O-3.2 grade dictionary. Includes histological grades 1-4, lymphoma/leukaemia-specific codes 5-8, and unknown (9). Grade is mandatory only when behaviour is malignant (3). |
| [CR - Morphology Family value set](ValueSet-CRMorphologyFamilyVS.md) | Value set of morphological family grouping codes derived from the CanReg5 MorphFam.txt lookup file, used in the Sex-Morphology and Topography-Morphology data quality checks. |
| [CR - Morphology Group value set](ValueSet-CRMorphologyGroupVS.md) | Value set of morphology group codes used in the Multiple Primary Tester data quality check, derived from the CanReg5 DefaultMultiplePrimaryTester mapping logic. |
| [CR - Morphology result value set](ValueSet-CRMorphologyResultVS.md) | Value set of intermediate morphology evaluation result codes used in the Multiple Primary Tester check to determine whether to proceed to topography evaluation. |
| [CR - Morphology4 value set](ValueSet-CRMorphology4VS.md) | Value set of ICD-O-3.2 morphology codes (first four digits) mapped from the CanReg5 morphology dictionary, representing histological types of neoplasms. |
| [CR - Multiple primary test value set](ValueSet-CRMultiplePrimaryTestVS.md) | Value set of result codes for the Multiple Primary Tester data quality check, determining whether tumours are duplicate registrations, distinct multiple primaries, or have unknown topography. |
| [CR - Placeholder: Source type value set](ValueSet-CRPlaceholderSourceTypeVS.md) | Value set of placeholder source type codes for the Source stage. These values must be customised prior to implementation to reflect local source types (e.g. hospital records, pathology reports, death certificates). |
| [CR - Sex value set](ValueSet-CRSexVS.md) | Value set of sex codes aligned with the CanReg5 sex dictionary. These numeric codes are referenced in multiple data quality checks including Sex-Topography and Sex-Morphology checks. |
| [CR - Site value set](ValueSet-CRSiteVS.md) | Value set of anatomical site codes used to filter topography values in a dependent dropdown list for simplified data entry. |
| [CR - Topography Group value set](ValueSet-CRTopographyGroupVS.md) | Value set of topography group codes used in the Multiple Primary Tester data quality check, derived from the CanReg5 DefaultMultiplePrimaryTester mapping logic. |
| [CR - Topography Morphology key value set](ValueSet-CRTopographyMorphologyKeyVS.md) | Value set of keys used in the Topography-Morphology data quality check. NA (*) means accepted with any topography; Plus (+) means checked against the MUST list; Minus (-) means checked against the MUST-NOT list. |
| [CR - Topography value set](ValueSet-CRTopographyVS.md) | Value set of ICD-O-3 topography codes mapped from the CanReg5 topography dictionary, representing anatomical sites of tumour origin. |
| [CR - Tumor number value set](ValueSet-CRTumorNumberVS.md) | Value set of tumor number identifiers. Combined with the Patient ID, the Tumor Number forms the Tumor ID composite identifier that uniquely identifies a tumor record within the system. |
| [CR - Vital status value set](ValueSet-CRVitalStatusVS.md) | Value set of vital status codes used in the Follow-up stage to record the current status of the registered patient. |
| [Cancer Registry Encounter Types Value Set](ValueSet-cr-encounter-type-vs.md) | Value set of encounter types for cancer registration stages. |
| [Cancer Registry Observation Codes Value Set](ValueSet-cr-observation-codes-vs.md) | Value set containing all cancer-registry-specific observation type codes. |

### Terminology: Code Systems 

These define new code systems used by systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [CR - Address](CodeSystem-CRAddressCS.md) | Address codes containing placeholder values that must be customised prior to implementation to reflect the administrative geography of the country or region. The recommended approach uses text-type data elements combined with dependent dropdown lists, aligning with the CanReg5 convention where the address variable is two characters in length encoding a combination of two administrative levels. |
| [CR - Basis diagnosis](CodeSystem-CRBasisDiagnosisCS.md) | Basis of diagnosis codes aligned with the CanReg5 basis dictionary. Codes 0-4 represent non-microscopically confirmed diagnoses (death certificate only, clinical, clinical investigation/ultrasound, surgery/autopsy, laboratory test). Codes 5-8 represent microscopically confirmed diagnoses (cytology, histology of metastasis, histology of primary, autopsy with histology). Code 9 represents unknown basis. Used in the Basis data quality check. |
| [CR - Behaviour](CodeSystem-CRBehaviourCS.md) | Tumour behaviour codes aligned with the CanReg5 ICD-O-3.2 behaviour dictionary. Used in the Tumor stage to classify the biological behaviour of the neoplasm. These codes are referenced in data quality checks including the Topography-Behaviour and Sex-Morphology checks. Codes must not be modified as they are mapped directly to CanReg5 standards. |
| [CR - Grade](CodeSystem-CRGradeCS.md) | Tumour grade and differentiation codes aligned with the CanReg5 ICD-O-3.2 grade dictionary. Codes 1-4 represent histological grade (well differentiated to undifferentiated/anaplastic). Codes 5-8 are reserved for lymphomas and leukaemias (T-cell, B-cell, Null cell, NK cell). Code 9 represents unknown/not stated. Grade is mandatory only when behaviour is malignant (3). These codes are used in the Grade data quality check. |
| [CR - Morphology Family](CodeSystem-CRMorphologyFamilyCS.md) | Morphological family grouping codes derived from the CanReg5 MorphFam.txt lookup file. Each morphology code is assigned to a morphological family, which is used in the Sex-Morphology check (to identify rare sex-morphology combinations) and the Topography-Morphology check (to evaluate morphology-topography combinations against MUST and MUST-NOT lookup tables). Code 99 (N/A) indicates the family is accepted with any topography. |
| [CR - Morphology Group](CodeSystem-CRMorphologyGroupCS.md) | Morphology group codes used in the Multiple Primary Tester data quality check. Groups are derived from morphology codes using the mapping logic defined in the CanReg5 DefaultMultiplePrimaryTester class. Groups 8-14 represent haematopoietic/lymphoid tissue subtypes (systemic groups). Group 0 indicates an invalid morphology, and group 17 indicates an unspecified morphology. |
| [CR - Morphology result](CodeSystem-CRMorphologyResultCS.md) | Intermediate morphology evaluation result codes used in the Multiple Primary Tester check. When the morphology comparison between two tumours is inconclusive (undecided), the check proceeds to topography evaluation. 'Invalid' indicates one of the morphology groups is invalid (0). 'Go to topography' indicates the morphology evaluation was undecided and topography comparison is needed. |
| [CR - Morphology4](CodeSystem-CRMorphology4CS.md) | ICD-O-3.2 morphology codes (first four digits) mapped from the CanReg5 morphology dictionary (morphology4.tsv). These codes represent the histological type of the neoplasm. Since the field is configured as a closed option set, validity of morphology values is guaranteed by the data entry interface. Codes must not be modified as they are mapped directly to CanReg5 standards and used in multiple data quality checks. |
| [CR - Multiple primary test](CodeSystem-CRMultiplePrimaryTestCS.md) | Result codes for the Multiple Primary Tester data quality check. This check determines whether two or more tumours registered for the same patient represent duplicate registrations of the same tumour or distinct multiple primary tumours, based on the CanReg5 DefaultMultiplePrimaryTester logic. |
| [CR - Placeholder: Source type](CodeSystem-CRPlaceholderSourceTypeCS.md) | Placeholder source type codes for the Source stage. These values must be customised prior to implementation to reflect the source types relevant to the local registry context (e.g. hospital records, pathology laboratory reports, death certificates). |
| [CR - Sex](CodeSystem-CRSexCS.md) | Sex codes aligned with the CanReg5 sex dictionary, using numeric codes. These codes are referenced in multiple data quality checks throughout the program, including the Sex-Topography and Sex-Morphology checks. Any modification to these codes or substitution with a differently coded option set would break the logic of those checks. |
| [CR - Site](CodeSystem-CRSiteCS.md) | Anatomical site codes used to filter topography values in a dependent dropdown list. When a site is selected, only the topography codes valid for the chosen site are presented for selection, simplifying data entry for registry staff. |
| [CR - Topography](CodeSystem-CRTopographyCS.md) | ICD-O-3 topography codes mapped from the CanReg5 topography dictionary (topography.tsv). These codes represent the anatomical site of the tumour origin. The topography field is implemented as a dependent dropdown list filtered by the selected Site. Codes must not be modified as they are mapped directly to CanReg5 standards and used in multiple data quality checks. |
| [CR - Topography Group](CodeSystem-CRTopographyGroupCS.md) | Topography group codes used in the Multiple Primary Tester data quality check. Groups are derived from topography codes using the mapping logic defined in the CanReg5 DefaultMultiplePrimaryTester class. Group 80 indicates an unspecified topography. These groups determine whether tumours at different sites should be considered duplicate or multiple primaries. |
| [CR - Topography Morphology key](CodeSystem-CRTopographyMorphologyKeyCS.md) | Keys used in the Topography-Morphology data quality check to determine how each morphological family relates to topography. NA (*): the family is accepted with any topography. Plus (+): the family has a restricted set of expected topography sites checked against the MUST list. Minus (-): the family has a restricted set of prohibited topography sites checked against the MUST-NOT list. |
| [CR - Tumor number](CodeSystem-CRTumorNumberCS.md) | Tumor number codes used as a unique identifier for each tumor within the registry. Combined with the Patient ID, the Tumor Number constitutes the Tumor ID (the composite identifier that uniquely identifies a tumor record). A validation mechanism prevents the same tumor number from being assigned to more than one tumor belonging to the same patient. |
| [CR - Vital status](CodeSystem-CRVitalStatusCS.md) | Vital status codes used in the Follow-up stage to record the current status of the registered patient. When the status is 'Died', the date of death must also be recorded. |
| [Cancer Registry Encounter Types](CodeSystem-cr-encounter-type.md) | Encounter types representing the three repeatable program stages of the DHIS2 Cancer Registry tracker program. |
| [Cancer Registry Observation Codes](CodeSystem-cr-observation-codes.md) | Code system defining observation type codes for cancer registry observations. Used where no standard LOINC code exists for cancer-registry-specific concepts. |
| [DHIS2 Data Elements](CodeSystem-dhis2-data-elements-cs.md) | Code system for 47 unique DHIS2 data elements from all selected programs |
| [DHIS2 Tracked Entity Attributes](CodeSystem-dhis2-tracked-entity-attributes-cs.md) | Code system for 5 unique DHIS2 tracked entity attributes |

### Example: Example Instances 

These are example instances that show what data produced and consumed by systems conforming with this implementation guide might look like.

| | |
| :--- | :--- |
| [Example Age at Incidence](Observation-ExampleAgeAtIncidence.md) | Age at incidence: 54 years. |
| [Example Basis of Diagnosis](Observation-ExampleBasisOfDiagnosis.md) | Basis of diagnosis observation: 7 — Histology of primary. |
| [Example Behaviour](Observation-ExampleBehaviour.md) | Behaviour observation: 3 — Malignant, primary site. |
| [Example Cancer Registration Episode](EpisodeOfCare-ExampleCRRegistrationEpisode.md) | Episode of care representing the patient's enrollment into the Cancer Registry programme. |
| [Example Cancer Registry Patient](Patient-ExampleCRPatient.md) | A 54-year-old female patient enrolled in the DHIS2 Cancer Registry. |
| [Example Follow-up Encounter](Encounter-ExampleFollowUpEncounter.md) | Encounter recording a 6-month follow-up contact. |
| [Example Grade](Observation-ExampleGrade.md) | Histological grade observation: Grade 2 — moderately differentiated. |
| [Example Incidence Date](Observation-ExampleIncidenceDate.md) | Incidence date observation: 2026-01-01. |
| [Example Morphology](Observation-ExampleMorphology.md) | Morphology observation: 8500 — Infiltrating duct carcinoma, NOS. |
| [Example Site](Observation-ExampleSite.md) | Site observation: Breast. |
| [Example Source Encounter](Encounter-ExampleSourceEncounter.md) | Encounter recording the Source stage event: hospital notification. |
| [Example Source Tumor Number](Observation-ExampleSourceTumorNumber.md) | Source links to tumor number 01. |
| [Example Source Type](Observation-ExampleSourceType.md) | Source type: placeholder source type (to be localised). |
| [Example Topography](Observation-ExampleTopography.md) | Topography observation: C50.4 — Upper-outer quadrant of breast. |
| [Example Tumor Encounter](Encounter-ExampleTumorEncounter.md) | Encounter recording the Tumor stage event for primary breast carcinoma. |
| [Example Tumor Number](Observation-ExampleTumorNumber.md) | Tumour number: 01 (first tumour registered for this patient). |
| [Example Vital Status](Observation-ExampleVitalStatus.md) | Patient alive at 6-month follow-up. |

