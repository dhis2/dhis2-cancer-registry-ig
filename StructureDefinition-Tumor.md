# Tumor - DHIS2 Cancer Registry Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Tumor**

## Logical Model: Tumor 

| | |
| :--- | :--- |
| *Official URL*:https://dhis2.org/fhir/cancer-registry/StructureDefinition/Tumor | *Version*:0.1.0 |
| Draft as of 2026-04-14 | *Computable Name*:Tumor |

 
Tumor stage of the DHIS2 Cancer Registry tracker program. This repeatable stage is the central component capturing all key clinical and epidemiological information related to an individual cancer case. 

**Usages:**

* Use this Logical Model: [Cancer Registry](StructureDefinition-CancerRegistry.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/dhis2.cancer.registry|current/StructureDefinition/Tumor)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-Tumor.csv), [Excel](StructureDefinition-Tumor.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "Tumor",
  "url" : "https://dhis2.org/fhir/cancer-registry/StructureDefinition/Tumor",
  "version" : "0.1.0",
  "name" : "Tumor",
  "title" : "Tumor",
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
  "description" : "Tumor stage of the DHIS2 Cancer Registry tracker program. This repeatable stage is the central component capturing all key clinical and epidemiological information related to an individual cancer case.",
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "tumor-to-tumor-encounter",
    "uri" : "https://dhis2.org/fhir/cancer-registry/StructureDefinition/cr-tumor-encounter",
    "name" : "Mapping: Tumor → CRTumorEncounter",
    "comment" : "Maps the DHIS2 Cancer Registry Tumor stage event to a CRTumorEncounter. Individual data elements become Observations referencing this encounter."
  },
  {
    "identity" : "tumor-to-topography",
    "uri" : "https://dhis2.org/fhir/cancer-registry/StructureDefinition/cr-topography-observation",
    "name" : "Mapping: Tumor crTopography → Topography Observation",
    "comment" : "Maps the CR - Topography data element to a CRTopographyObservation."
  },
  {
    "identity" : "tumor-to-morphology",
    "uri" : "https://dhis2.org/fhir/cancer-registry/StructureDefinition/cr-morphology-observation",
    "name" : "Mapping: Tumor crMorphology → Morphology Observation",
    "comment" : "Maps the CR - Morphology data element to a CRMorphologyObservation."
  },
  {
    "identity" : "tumor-to-behaviour",
    "uri" : "https://dhis2.org/fhir/cancer-registry/StructureDefinition/cr-behaviour-observation",
    "name" : "Mapping: Tumor crBehaviour → Behaviour Observation",
    "comment" : "Maps the CR - Behaviour data element to a CRBehaviourObservation."
  },
  {
    "identity" : "tumor-to-grade",
    "uri" : "https://dhis2.org/fhir/cancer-registry/StructureDefinition/cr-grade-observation",
    "name" : "Mapping: Tumor crGrade → Grade Observation",
    "comment" : "Maps the CR - Grade data element to a CRGradeObservation (LOINC 33732-9)."
  },
  {
    "identity" : "tumor-to-basis-diagnosis",
    "uri" : "https://dhis2.org/fhir/cancer-registry/StructureDefinition/cr-basis-of-diagnosis-observation",
    "name" : "Mapping: Tumor crBasisDiagnosis → Basis of Diagnosis Observation",
    "comment" : "Maps the CR - Basis diagnosis data element to a CRBasisOfDiagnosisObservation."
  },
  {
    "identity" : "tumor-to-site",
    "uri" : "https://dhis2.org/fhir/cancer-registry/StructureDefinition/cr-site-observation",
    "name" : "Mapping: Tumor crSite → Site Observation",
    "comment" : "Maps the CR - Site data element to a CRSiteObservation."
  },
  {
    "identity" : "tumor-to-incidence-date",
    "uri" : "https://dhis2.org/fhir/cancer-registry/StructureDefinition/cr-incidence-date-observation",
    "name" : "Mapping: Tumor crIncidenceDate → Incidence Date Observation",
    "comment" : "Maps the CR - Incidence date data element to a CRIncidenceDateObservation."
  },
  {
    "identity" : "tumor-to-age-at-incidence",
    "uri" : "https://dhis2.org/fhir/cancer-registry/StructureDefinition/cr-age-at-incidence-observation",
    "name" : "Mapping: Tumor crAge → Age at Incidence Observation",
    "comment" : "Maps the CR - Age data element to a CRAgeAtIncidenceObservation."
  },
  {
    "identity" : "tumor-to-address",
    "uri" : "https://dhis2.org/fhir/cancer-registry/StructureDefinition/cr-address-observation",
    "name" : "Mapping: Tumor crAddress → Address Observation",
    "comment" : "Maps the CR - Address data element to a CRAddressObservation."
  },
  {
    "identity" : "tumor-to-tumor-number",
    "uri" : "https://dhis2.org/fhir/cancer-registry/StructureDefinition/cr-tumor-number-observation",
    "name" : "Mapping: Tumor crTumorNumber → Tumor Number Observation",
    "comment" : "Maps the CR - Tumor number data element to a CRTumorNumberObservation."
  }],
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://dhis2.org/fhir/cancer-registry/StructureDefinition/Tumor",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "Tumor",
      "path" : "Tumor",
      "short" : "Tumor",
      "definition" : "Tumor stage of the DHIS2 Cancer Registry tracker program. This repeatable stage is the central component capturing all key clinical and epidemiological information related to an individual cancer case."
    },
    {
      "id" : "Tumor.crIncidenceDate",
      "path" : "Tumor.crIncidenceDate",
      "code" : [{
        "system" : "https://dhis2.org/fhir/cancer-registry/CodeSystem/dhis2-data-elements-cs",
        "code" : "c6EnHSAMUat"
      }],
      "short" : "CR - Incidence date",
      "definition" : "CR - Incidence date",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "date"
      }],
      "mapping" : [{
        "identity" : "tumor-to-tumor-encounter",
        "map" : "Encounter.period.start",
        "comment" : "Also recorded as a CRIncidenceDateObservation"
      },
      {
        "identity" : "tumor-to-incidence-date",
        "map" : "Observation.valueDateTime"
      }]
    },
    {
      "id" : "Tumor.crAge",
      "path" : "Tumor.crAge",
      "code" : [{
        "system" : "https://dhis2.org/fhir/cancer-registry/CodeSystem/dhis2-data-elements-cs",
        "code" : "tasm9QG8HaF"
      }],
      "short" : "CR - Age",
      "definition" : "CR - Age",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "unsignedInt"
      }],
      "mapping" : [{
        "identity" : "tumor-to-age-at-incidence",
        "map" : "Observation.valueInteger"
      }]
    },
    {
      "id" : "Tumor.crAddress",
      "path" : "Tumor.crAddress",
      "code" : [{
        "system" : "https://dhis2.org/fhir/cancer-registry/CodeSystem/dhis2-data-elements-cs",
        "code" : "xcUBzN5QFXu"
      }],
      "short" : "CR - Address",
      "definition" : "CR - Address",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://dhis2.org/fhir/cancer-registry/ValueSet/CRAddressVS"
      },
      "mapping" : [{
        "identity" : "tumor-to-address",
        "map" : "Observation.valueCodeableConcept"
      }]
    },
    {
      "id" : "Tumor.crTumorNumber",
      "path" : "Tumor.crTumorNumber",
      "code" : [{
        "system" : "https://dhis2.org/fhir/cancer-registry/CodeSystem/dhis2-data-elements-cs",
        "code" : "KgDQLAkC5ql"
      }],
      "short" : "CR - Tumor number",
      "definition" : "CR - Tumor number",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://dhis2.org/fhir/cancer-registry/ValueSet/CRTumorNumberVS"
      },
      "mapping" : [{
        "identity" : "tumor-to-tumor-number",
        "map" : "Observation.valueCodeableConcept"
      }]
    },
    {
      "id" : "Tumor.crSite",
      "path" : "Tumor.crSite",
      "code" : [{
        "system" : "https://dhis2.org/fhir/cancer-registry/CodeSystem/dhis2-data-elements-cs",
        "code" : "LCSApBii8CI"
      }],
      "short" : "CR - Site",
      "definition" : "CR - Site",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://dhis2.org/fhir/cancer-registry/ValueSet/CRSiteVS"
      },
      "mapping" : [{
        "identity" : "tumor-to-site",
        "map" : "Observation.valueCodeableConcept"
      }]
    },
    {
      "id" : "Tumor.crTopography",
      "path" : "Tumor.crTopography",
      "code" : [{
        "system" : "https://dhis2.org/fhir/cancer-registry/CodeSystem/dhis2-data-elements-cs",
        "code" : "zw6Vwqnhvmh"
      }],
      "short" : "CR - Topography",
      "definition" : "CR - Topography",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://dhis2.org/fhir/cancer-registry/ValueSet/CRTopographyVS"
      },
      "mapping" : [{
        "identity" : "tumor-to-topography",
        "map" : "Observation.valueCodeableConcept"
      }]
    },
    {
      "id" : "Tumor.crMorphology",
      "path" : "Tumor.crMorphology",
      "code" : [{
        "system" : "https://dhis2.org/fhir/cancer-registry/CodeSystem/dhis2-data-elements-cs",
        "code" : "UkyyY1xukJg"
      }],
      "short" : "CR - Morphology",
      "definition" : "CR - Morphology",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://dhis2.org/fhir/cancer-registry/ValueSet/CRMorphology4VS"
      },
      "mapping" : [{
        "identity" : "tumor-to-morphology",
        "map" : "Observation.valueCodeableConcept"
      }]
    },
    {
      "id" : "Tumor.crBehaviour",
      "path" : "Tumor.crBehaviour",
      "code" : [{
        "system" : "https://dhis2.org/fhir/cancer-registry/CodeSystem/dhis2-data-elements-cs",
        "code" : "MMIuwJdjx8B"
      }],
      "short" : "CR - Behaviour",
      "definition" : "CR - Behaviour",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://dhis2.org/fhir/cancer-registry/ValueSet/CRBehaviourVS"
      },
      "mapping" : [{
        "identity" : "tumor-to-behaviour",
        "map" : "Observation.valueCodeableConcept"
      }]
    },
    {
      "id" : "Tumor.crBasisDiagnosis",
      "path" : "Tumor.crBasisDiagnosis",
      "code" : [{
        "system" : "https://dhis2.org/fhir/cancer-registry/CodeSystem/dhis2-data-elements-cs",
        "code" : "uoyoNWrexbY"
      }],
      "short" : "CR - Basis diagnosis",
      "definition" : "CR - Basis diagnosis",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://dhis2.org/fhir/cancer-registry/ValueSet/CRBasisDiagnosisVS"
      },
      "mapping" : [{
        "identity" : "tumor-to-basis-diagnosis",
        "map" : "Observation.valueCodeableConcept"
      }]
    },
    {
      "id" : "Tumor.crGrade",
      "path" : "Tumor.crGrade",
      "code" : [{
        "system" : "https://dhis2.org/fhir/cancer-registry/CodeSystem/dhis2-data-elements-cs",
        "code" : "ZMD8dwB3zOZ"
      }],
      "short" : "CR - Grade",
      "definition" : "CR - Grade",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://dhis2.org/fhir/cancer-registry/ValueSet/CRGradeVS"
      },
      "mapping" : [{
        "identity" : "tumor-to-grade",
        "map" : "Observation.valueCodeableConcept"
      }]
    },
    {
      "id" : "Tumor.crChecksRunChecks",
      "path" : "Tumor.crChecksRunChecks",
      "code" : [{
        "system" : "https://dhis2.org/fhir/cancer-registry/CodeSystem/dhis2-data-elements-cs",
        "code" : "FlGHlAuG4Ly"
      }],
      "short" : "CR - Checks: Run checks",
      "definition" : "CR - Checks: Run checks",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "Tumor.crRunTopographyMorphologyCheck",
      "path" : "Tumor.crRunTopographyMorphologyCheck",
      "code" : [{
        "system" : "https://dhis2.org/fhir/cancer-registry/CodeSystem/dhis2-data-elements-cs",
        "code" : "nFJ2MJ8Vxuj"
      }],
      "short" : "CR - Run Topography Morphology check",
      "definition" : "CR - Run Topography Morphology check",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "Tumor.crRunMultiplePrimaryCheck",
      "path" : "Tumor.crRunMultiplePrimaryCheck",
      "code" : [{
        "system" : "https://dhis2.org/fhir/cancer-registry/CodeSystem/dhis2-data-elements-cs",
        "code" : "rqpqtJZto2L"
      }],
      "short" : "CR - Run Multiple primary check",
      "definition" : "CR - Run Multiple primary check",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "Tumor.crChecksRareAgeMorphology",
      "path" : "Tumor.crChecksRareAgeMorphology",
      "code" : [{
        "system" : "https://dhis2.org/fhir/cancer-registry/CodeSystem/dhis2-data-elements-cs",
        "code" : "mxfPEKn6kFt"
      }],
      "short" : "CR - Checks: Rare Age Morphology",
      "definition" : "CR - Checks: Rare Age Morphology",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "Tumor.crChecksRareAgeTopography",
      "path" : "Tumor.crChecksRareAgeTopography",
      "code" : [{
        "system" : "https://dhis2.org/fhir/cancer-registry/CodeSystem/dhis2-data-elements-cs",
        "code" : "rPvQffpxaEs"
      }],
      "short" : "CR - Checks: Rare Age Topography",
      "definition" : "CR - Checks: Rare Age Topography",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "Tumor.crChecksRareAgeTopographyMorphology",
      "path" : "Tumor.crChecksRareAgeTopographyMorphology",
      "code" : [{
        "system" : "https://dhis2.org/fhir/cancer-registry/CodeSystem/dhis2-data-elements-cs",
        "code" : "Laax6wSBp2G"
      }],
      "short" : "CR - Checks: Rare Age Topography Morphology",
      "definition" : "CR - Checks: Rare Age Topography Morphology",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "Tumor.crChecksRareBasis",
      "path" : "Tumor.crChecksRareBasis",
      "code" : [{
        "system" : "https://dhis2.org/fhir/cancer-registry/CodeSystem/dhis2-data-elements-cs",
        "code" : "U8v95tUnazC"
      }],
      "short" : "CR - Checks: Rare Basis",
      "definition" : "CR - Checks: Rare Basis",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "Tumor.crChecksInvalidGrade",
      "path" : "Tumor.crChecksInvalidGrade",
      "code" : [{
        "system" : "https://dhis2.org/fhir/cancer-registry/CodeSystem/dhis2-data-elements-cs",
        "code" : "doB0rv08MIc"
      }],
      "short" : "CR - Checks: Invalid Grade",
      "definition" : "CR - Checks: Invalid Grade",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "Tumor.crChecksRareSexMorphology",
      "path" : "Tumor.crChecksRareSexMorphology",
      "code" : [{
        "system" : "https://dhis2.org/fhir/cancer-registry/CodeSystem/dhis2-data-elements-cs",
        "code" : "FH09UKj7HMC"
      }],
      "short" : "CR - Checks: Rare Sex Morphology",
      "definition" : "CR - Checks: Rare Sex Morphology",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "Tumor.crChecksInvalidSexTopography",
      "path" : "Tumor.crChecksInvalidSexTopography",
      "code" : [{
        "system" : "https://dhis2.org/fhir/cancer-registry/CodeSystem/dhis2-data-elements-cs",
        "code" : "wAmyuRZNNXC"
      }],
      "short" : "CR - Checks: Invalid Sex Topography",
      "definition" : "CR - Checks: Invalid Sex Topography",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "Tumor.crChecksRareTopographyBehaviour",
      "path" : "Tumor.crChecksRareTopographyBehaviour",
      "code" : [{
        "system" : "https://dhis2.org/fhir/cancer-registry/CodeSystem/dhis2-data-elements-cs",
        "code" : "ugeBdJzYHVW"
      }],
      "short" : "CR - Checks: Rare Topography Behaviour",
      "definition" : "CR - Checks: Rare Topography Behaviour",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "Tumor.crChecksRareTopographyMorphology",
      "path" : "Tumor.crChecksRareTopographyMorphology",
      "code" : [{
        "system" : "https://dhis2.org/fhir/cancer-registry/CodeSystem/dhis2-data-elements-cs",
        "code" : "fdvzxz58nEE"
      }],
      "short" : "CR - Checks: Rare Topography Morphology",
      "definition" : "CR - Checks: Rare Topography Morphology",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "Tumor.crChecksMultiplePrimaryTestResult",
      "path" : "Tumor.crChecksMultiplePrimaryTestResult",
      "code" : [{
        "system" : "https://dhis2.org/fhir/cancer-registry/CodeSystem/dhis2-data-elements-cs",
        "code" : "VBkjlEwG4BE"
      }],
      "short" : "CR - Checks: Multiple primary test result",
      "definition" : "CR - Checks: Multiple primary test result",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://dhis2.org/fhir/cancer-registry/ValueSet/CRMultiplePrimaryTestVS"
      }
    },
    {
      "id" : "Tumor.crRare",
      "path" : "Tumor.crRare",
      "code" : [{
        "system" : "https://dhis2.org/fhir/cancer-registry/CodeSystem/dhis2-data-elements-cs",
        "code" : "jTW2ljvoIc6"
      }],
      "short" : "CR - Rare",
      "definition" : "CR - Rare",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }],
      "mapping" : [{
        "identity" : "tumor-to-tumor-encounter",
        "map" : "Encounter.extension('https://dhis2.org/fhir/cancer-registry/StructureDefinition/cr-rare').valueBoolean",
        "comment" : "Rare tumor classification flag"
      }]
    },
    {
      "id" : "Tumor.crInvalid",
      "path" : "Tumor.crInvalid",
      "code" : [{
        "system" : "https://dhis2.org/fhir/cancer-registry/CodeSystem/dhis2-data-elements-cs",
        "code" : "TXtHNzrfmki"
      }],
      "short" : "CR - Invalid",
      "definition" : "CR - Invalid",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "Tumor.crMorphologyFamily",
      "path" : "Tumor.crMorphologyFamily",
      "code" : [{
        "system" : "https://dhis2.org/fhir/cancer-registry/CodeSystem/dhis2-data-elements-cs",
        "code" : "RBu5b3A68mq"
      }],
      "short" : "CR - Morphology Family",
      "definition" : "CR - Morphology Family",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://dhis2.org/fhir/cancer-registry/ValueSet/CRMorphologyFamilyVS"
      }
    },
    {
      "id" : "Tumor.crTopographyMorphologyKey",
      "path" : "Tumor.crTopographyMorphologyKey",
      "code" : [{
        "system" : "https://dhis2.org/fhir/cancer-registry/CodeSystem/dhis2-data-elements-cs",
        "code" : "XR1U9dr60xI"
      }],
      "short" : "CR - Topography Morphology key",
      "definition" : "CR - Topography Morphology key",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://dhis2.org/fhir/cancer-registry/ValueSet/CRTopographyMorphologyKeyVS"
      }
    },
    {
      "id" : "Tumor.crPresentInTheMustList",
      "path" : "Tumor.crPresentInTheMustList",
      "code" : [{
        "system" : "https://dhis2.org/fhir/cancer-registry/CodeSystem/dhis2-data-elements-cs",
        "code" : "oZyJlKscN6G"
      }],
      "short" : "CR - Present in the MUST list",
      "definition" : "CR - Present in the MUST list",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "Tumor.crPresentInTheMustNotList",
      "path" : "Tumor.crPresentInTheMustNotList",
      "code" : [{
        "system" : "https://dhis2.org/fhir/cancer-registry/CodeSystem/dhis2-data-elements-cs",
        "code" : "DyVH5Q3Qf0Q"
      }],
      "short" : "CR - Present in the MUST-NOT list",
      "definition" : "CR - Present in the MUST-NOT list",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "Tumor.crMorphologyGroup",
      "path" : "Tumor.crMorphologyGroup",
      "code" : [{
        "system" : "https://dhis2.org/fhir/cancer-registry/CodeSystem/dhis2-data-elements-cs",
        "code" : "yt3gq8onyKb"
      }],
      "short" : "CR - Morphology group",
      "definition" : "CR - Morphology group",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://dhis2.org/fhir/cancer-registry/ValueSet/CRMorphologyGroupVS"
      }
    },
    {
      "id" : "Tumor.crPreviousMorphologyGroup",
      "path" : "Tumor.crPreviousMorphologyGroup",
      "code" : [{
        "system" : "https://dhis2.org/fhir/cancer-registry/CodeSystem/dhis2-data-elements-cs",
        "code" : "eGWudq2aGpY"
      }],
      "short" : "CR - Previous morphology group",
      "definition" : "CR - Previous morphology group",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://dhis2.org/fhir/cancer-registry/ValueSet/CRMorphologyGroupVS"
      }
    },
    {
      "id" : "Tumor.crPreviousMorphologyGroupMultiple",
      "path" : "Tumor.crPreviousMorphologyGroupMultiple",
      "code" : [{
        "system" : "https://dhis2.org/fhir/cancer-registry/CodeSystem/dhis2-data-elements-cs",
        "code" : "dTbQZsduHT7"
      }],
      "short" : "CR - Previous morphology group (multiple)",
      "definition" : "CR - Previous morphology group (multiple)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://dhis2.org/fhir/cancer-registry/ValueSet/CRMorphologyGroupVS"
      }
    },
    {
      "id" : "Tumor.crTopographyGroup",
      "path" : "Tumor.crTopographyGroup",
      "code" : [{
        "system" : "https://dhis2.org/fhir/cancer-registry/CodeSystem/dhis2-data-elements-cs",
        "code" : "RmzIYvxiBm4"
      }],
      "short" : "CR - Topography group",
      "definition" : "CR - Topography group",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://dhis2.org/fhir/cancer-registry/ValueSet/CRTopographyGroupVS"
      }
    },
    {
      "id" : "Tumor.crPreviousTopographyGroup",
      "path" : "Tumor.crPreviousTopographyGroup",
      "code" : [{
        "system" : "https://dhis2.org/fhir/cancer-registry/CodeSystem/dhis2-data-elements-cs",
        "code" : "FyzoZsxRjjz"
      }],
      "short" : "CR - Previous topography group",
      "definition" : "CR - Previous topography group",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://dhis2.org/fhir/cancer-registry/ValueSet/CRTopographyGroupVS"
      }
    },
    {
      "id" : "Tumor.crPreviousTopographyGroupMultiple",
      "path" : "Tumor.crPreviousTopographyGroupMultiple",
      "code" : [{
        "system" : "https://dhis2.org/fhir/cancer-registry/CodeSystem/dhis2-data-elements-cs",
        "code" : "IhLiguJKuzz"
      }],
      "short" : "CR - Previous topography group (multiple)",
      "definition" : "CR - Previous topography group (multiple)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://dhis2.org/fhir/cancer-registry/ValueSet/CRTopographyGroupVS"
      }
    },
    {
      "id" : "Tumor.crMorphologyResult",
      "path" : "Tumor.crMorphologyResult",
      "code" : [{
        "system" : "https://dhis2.org/fhir/cancer-registry/CodeSystem/dhis2-data-elements-cs",
        "code" : "n4IHuWceDlW"
      }],
      "short" : "CR - Morphology result",
      "definition" : "CR - Morphology result",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://dhis2.org/fhir/cancer-registry/ValueSet/CRMorphologyResultVS"
      }
    },
    {
      "id" : "Tumor.crConfirmTheRareStatus",
      "path" : "Tumor.crConfirmTheRareStatus",
      "code" : [{
        "system" : "https://dhis2.org/fhir/cancer-registry/CodeSystem/dhis2-data-elements-cs",
        "code" : "z3JSu92EQhg"
      }],
      "short" : "CR - Confirm the rare status",
      "definition" : "CR - Confirm the rare status",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "Tumor.crTumourid",
      "path" : "Tumor.crTumourid",
      "code" : [{
        "system" : "https://dhis2.org/fhir/cancer-registry/CodeSystem/dhis2-data-elements-cs",
        "code" : "KwMs1DNVA0R"
      }],
      "short" : "CR - TUMOURID",
      "definition" : "CR - TUMOURID",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "Tumor.crPreviousTumorNumber",
      "path" : "Tumor.crPreviousTumorNumber",
      "code" : [{
        "system" : "https://dhis2.org/fhir/cancer-registry/CodeSystem/dhis2-data-elements-cs",
        "code" : "OrVAWBySU43"
      }],
      "short" : "CR - Previous tumor number",
      "definition" : "CR - Previous tumor number",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://dhis2.org/fhir/cancer-registry/ValueSet/CRTumorNumberVS"
      }
    },
    {
      "id" : "Tumor.crPatientId",
      "path" : "Tumor.crPatientId",
      "code" : [{
        "system" : "https://dhis2.org/fhir/cancer-registry/CodeSystem/dhis2-data-elements-cs",
        "code" : "EMoLghRDW4A"
      }],
      "short" : "CR - Patient ID",
      "definition" : "CR - Patient ID",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    }]
  }
}

```
