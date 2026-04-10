# Tumor Registration Encounter - DHIS2 Cancer Registry Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Tumor Registration Encounter**

## Resource Profile: Tumor Registration Encounter 

| | |
| :--- | :--- |
| *Official URL*:https://dhis2.org/fhir/cancer-registry/StructureDefinition/cr-tumor-encounter | *Version*:0.1.0 |
| Draft as of 2026-04-10 | *Computable Name*:CRTumorEncounter |

 
Encounter representing a single Tumor stage event in the DHIS2 Cancer Registry tracker program. Each time a tumour is registered for a patient, a new Encounter of this type is created. Observations for each data element (topography, morphology, behaviour, grade, basis of diagnosis, etc.) reference this Encounter. 

**Usages:**

* Refer to this Profile: [Address](StructureDefinition-cr-address-observation.md), [Age at Incidence](StructureDefinition-cr-age-at-incidence-observation.md), [Basis of Diagnosis](StructureDefinition-cr-basis-of-diagnosis-observation.md), [Behaviour](StructureDefinition-cr-behaviour-observation.md)... Show 6 more, [Histological Grade](StructureDefinition-cr-grade-observation.md), [Incidence Date](StructureDefinition-cr-incidence-date-observation.md), [Morphology](StructureDefinition-cr-morphology-observation.md), [Site](StructureDefinition-cr-site-observation.md), [Topography](StructureDefinition-cr-topography-observation.md) and [Tumor Number](StructureDefinition-cr-tumor-number-observation.md)
* Examples for this Profile: [Encounter/ExampleTumorEncounter](Encounter-ExampleTumorEncounter.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/dhis2.cancer.registry|current/StructureDefinition/cr-tumor-encounter)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-cr-tumor-encounter.csv), [Excel](StructureDefinition-cr-tumor-encounter.xlsx), [Schematron](StructureDefinition-cr-tumor-encounter.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "cr-tumor-encounter",
  "url" : "https://dhis2.org/fhir/cancer-registry/StructureDefinition/cr-tumor-encounter",
  "version" : "0.1.0",
  "name" : "CRTumorEncounter",
  "title" : "Tumor Registration Encounter",
  "status" : "draft",
  "date" : "2026-04-10T12:38:15+00:00",
  "publisher" : "DHIS2",
  "contact" : [{
    "name" : "DHIS2",
    "telecom" : [{
      "system" : "url",
      "value" : "http://dhis2.org"
    }]
  }],
  "description" : "Encounter representing a single Tumor stage event in the DHIS2 Cancer Registry tracker program. Each time a tumour is registered for a patient, a new Encounter of this type is created. Observations for each data element (topography, morphology, behaviour, grade, basis of diagnosis, etc.) reference this Encounter.",
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "workflow",
    "uri" : "http://hl7.org/fhir/workflow",
    "name" : "Workflow Pattern"
  },
  {
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
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
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Encounter",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Encounter",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Encounter",
      "path" : "Encounter"
    },
    {
      "id" : "Encounter.extension",
      "path" : "Encounter.extension",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "url"
        }],
        "ordered" : false,
        "rules" : "open"
      }
    },
    {
      "id" : "Encounter.extension:rare",
      "path" : "Encounter.extension",
      "sliceName" : "rare",
      "short" : "Whether this tumor is classified as rare (IARC)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://dhis2.org/fhir/cancer-registry/StructureDefinition/cr-rare"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Encounter.status",
      "path" : "Encounter.status",
      "mustSupport" : true
    },
    {
      "id" : "Encounter.class",
      "path" : "Encounter.class",
      "mustSupport" : true
    },
    {
      "id" : "Encounter.type",
      "path" : "Encounter.type",
      "short" : "Tumor registration encounter",
      "min" : 1,
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "https://dhis2.org/fhir/cancer-registry/CodeSystem/cr-encounter-type",
          "code" : "tumor"
        }]
      },
      "mustSupport" : true
    },
    {
      "id" : "Encounter.subject",
      "path" : "Encounter.subject",
      "min" : 1,
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://dhis2.org/fhir/cancer-registry/StructureDefinition/cr-patient"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Encounter.episodeOfCare",
      "path" : "Encounter.episodeOfCare",
      "short" : "Link to the overall cancer registration episode",
      "min" : 1,
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://dhis2.org/fhir/cancer-registry/StructureDefinition/cr-cancer-registration-episode"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Encounter.period",
      "path" : "Encounter.period",
      "mustSupport" : true
    },
    {
      "id" : "Encounter.period.start",
      "path" : "Encounter.period.start",
      "short" : "Event date of the tumor registration",
      "mustSupport" : true
    }]
  }
}

```
