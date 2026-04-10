# Source Notification Encounter - DHIS2 Cancer Registry Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Source Notification Encounter**

## Resource Profile: Source Notification Encounter 

| | |
| :--- | :--- |
| *Official URL*:https://dhis2.org/fhir/cancer-registry/StructureDefinition/cr-source-encounter | *Version*:0.1.0 |
| Draft as of 2026-04-10 | *Computable Name*:CRSourceEncounter |

 
Encounter representing a single Source stage event in the DHIS2 Cancer Registry tracker program. Each documentation source (hospital record, pathology report, death certificate, etc.) that notifies the registry about a cancer case is recorded as a separate encounter. Observations within this encounter capture the source type and linked tumor number. 

**Usages:**

* Refer to this Profile: [Source Tumor Number](StructureDefinition-cr-source-tumor-number-observation.md) and [Source Type](StructureDefinition-cr-source-type-observation.md)
* Examples for this Profile: [Encounter/ExampleSourceEncounter](Encounter-ExampleSourceEncounter.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/dhis2.cancer.registry|current/StructureDefinition/cr-source-encounter)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-cr-source-encounter.csv), [Excel](StructureDefinition-cr-source-encounter.xlsx), [Schematron](StructureDefinition-cr-source-encounter.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "cr-source-encounter",
  "url" : "https://dhis2.org/fhir/cancer-registry/StructureDefinition/cr-source-encounter",
  "version" : "0.1.0",
  "name" : "CRSourceEncounter",
  "title" : "Source Notification Encounter",
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
  "description" : "Encounter representing a single Source stage event in the DHIS2 Cancer Registry tracker program. Each documentation source (hospital record, pathology report, death certificate, etc.) that notifies the registry about a cancer case is recorded as a separate encounter. Observations within this encounter capture the source type and linked tumor number.",
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
      "short" : "Source notification encounter",
      "min" : 1,
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "https://dhis2.org/fhir/cancer-registry/CodeSystem/cr-encounter-type",
          "code" : "source"
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
      "short" : "Event date of the source notification",
      "mustSupport" : true
    }]
  }
}

```
