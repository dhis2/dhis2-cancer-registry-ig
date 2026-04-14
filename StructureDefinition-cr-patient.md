# Cancer Registry Patient - DHIS2 Cancer Registry Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Cancer Registry Patient**

## Resource Profile: Cancer Registry Patient 

| | |
| :--- | :--- |
| *Official URL*:https://dhis2.org/fhir/cancer-registry/StructureDefinition/cr-patient | *Version*:0.1.0 |
| Draft as of 2026-04-14 | *Computable Name*:CRPatient |

 
Minimum patient profile for CanReg5-aligned population-based cancer registration. Requires a patient registration number (REGNO) of at least 8 characters following the CanReg5 CURRENT_DATE(yyyy)+SEQUENTIAL(####) convention, family name, administrative sex, and date of birth. 

**Usages:**

* Refer to this Profile: [Address](StructureDefinition-cr-address-observation.md), [Age at Incidence](StructureDefinition-cr-age-at-incidence-observation.md), [Basis of Diagnosis](StructureDefinition-cr-basis-of-diagnosis-observation.md), [Behaviour](StructureDefinition-cr-behaviour-observation.md)... Show 14 more, [Cancer Registration EpisodeOfCare](StructureDefinition-cr-cancer-registration-episode.md), [Date of Death](StructureDefinition-cr-date-of-death-observation.md), [Follow-up Encounter](StructureDefinition-cr-followup-encounter.md), [Histological Grade](StructureDefinition-cr-grade-observation.md), [Incidence Date](StructureDefinition-cr-incidence-date-observation.md), [Morphology](StructureDefinition-cr-morphology-observation.md), [Site](StructureDefinition-cr-site-observation.md), [Source Notification Encounter](StructureDefinition-cr-source-encounter.md), [Source Tumor Number](StructureDefinition-cr-source-tumor-number-observation.md), [Source Type](StructureDefinition-cr-source-type-observation.md), [Topography](StructureDefinition-cr-topography-observation.md), [Tumor Registration Encounter](StructureDefinition-cr-tumor-encounter.md), [Tumor Number](StructureDefinition-cr-tumor-number-observation.md) and [Vital Status](StructureDefinition-cr-vital-status-observation.md)
* Examples for this Profile: [Patient/ExampleCRPatient](Patient-ExampleCRPatient.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/dhis2.cancer.registry|current/StructureDefinition/cr-patient)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-cr-patient.csv), [Excel](StructureDefinition-cr-patient.xlsx), [Schematron](StructureDefinition-cr-patient.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "cr-patient",
  "url" : "https://dhis2.org/fhir/cancer-registry/StructureDefinition/cr-patient",
  "version" : "0.1.0",
  "name" : "CRPatient",
  "title" : "Cancer Registry Patient",
  "status" : "draft",
  "date" : "2026-04-14T07:58:39+00:00",
  "publisher" : "DHIS2",
  "contact" : [{
    "name" : "DHIS2",
    "telecom" : [{
      "system" : "url",
      "value" : "http://dhis2.org"
    }]
  }],
  "description" : "Minimum patient profile for CanReg5-aligned population-based cancer registration. Requires a patient registration number (REGNO) of at least 8 characters following the CanReg5 CURRENT_DATE(yyyy)+SEQUENTIAL(####) convention, family name, administrative sex, and date of birth.",
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
  },
  {
    "identity" : "cda",
    "uri" : "http://hl7.org/v3/cda",
    "name" : "CDA (R2)"
  },
  {
    "identity" : "w5",
    "uri" : "http://hl7.org/fhir/fivews",
    "name" : "FiveWs Pattern Mapping"
  },
  {
    "identity" : "v2",
    "uri" : "http://hl7.org/v2",
    "name" : "HL7 v2 Mapping"
  },
  {
    "identity" : "loinc",
    "uri" : "http://loinc.org",
    "name" : "LOINC code for the element"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Patient",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Patient",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Patient",
      "path" : "Patient"
    },
    {
      "id" : "Patient.identifier",
      "path" : "Patient.identifier",
      "slicing" : {
        "discriminator" : [{
          "type" : "pattern",
          "path" : "type"
        }],
        "rules" : "open"
      },
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Patient.identifier:regno",
      "path" : "Patient.identifier",
      "sliceName" : "regno",
      "short" : "Patient registration number (REGNO)",
      "definition" : "The unique patient registration number assigned by the cancer registry, following the convention CURRENT_DATE(yyyy)+SEQUENTIAL(####). Must be at least 8 characters.",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Patient.identifier:regno.type",
      "path" : "Patient.identifier.type",
      "min" : 1,
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/v2-0203",
          "code" : "MR"
        }]
      }
    },
    {
      "id" : "Patient.identifier:regno.value",
      "path" : "Patient.identifier.value",
      "min" : 1,
      "constraint" : [{
        "key" : "cr-regno-length",
        "severity" : "error",
        "human" : "Patient registration number (REGNO) must be at least 8 characters.",
        "expression" : "$this.length() >= 8",
        "source" : "https://dhis2.org/fhir/cancer-registry/StructureDefinition/cr-patient"
      }]
    },
    {
      "id" : "Patient.name",
      "path" : "Patient.name",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Patient.name.family",
      "path" : "Patient.name.family",
      "short" : "Family name or last name",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Patient.name.given",
      "path" : "Patient.name.given",
      "short" : "Given name or first name",
      "mustSupport" : true
    },
    {
      "id" : "Patient.gender",
      "path" : "Patient.gender",
      "short" : "Administrative sex of the patient (mapped from sex codes 1=male, 2=female, 9=unknown)",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Patient.birthDate",
      "path" : "Patient.birthDate",
      "short" : "Date of birth (may be estimated)",
      "min" : 1,
      "mustSupport" : true
    }]
  }
}

```
