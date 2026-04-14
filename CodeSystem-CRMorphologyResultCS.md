# CR - Morphology result - DHIS2 Cancer Registry Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **CR - Morphology result**

## CodeSystem: CR - Morphology result 

| | |
| :--- | :--- |
| *Official URL*:https://dhis2.org/fhir/cancer-registry/CodeSystem/CRMorphologyResultCS | *Version*:0.1.0 |
| Draft as of 2026-04-14 | *Computable Name*:CRMorphologyResultCS |

 
Intermediate morphology evaluation result codes used in the Multiple Primary Tester check. When the morphology comparison between two tumours is inconclusive (undecided), the check proceeds to topography evaluation. 'Invalid' indicates one of the morphology groups is invalid (0). 'Go to topography' indicates the morphology evaluation was undecided and topography comparison is needed. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [CRMorphologyResultVS](ValueSet-CRMorphologyResultVS.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "CRMorphologyResultCS",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/uv/crmi/StructureDefinition/crmi-shareablecodesystem",
    "http://hl7.org/fhir/uv/crmi/StructureDefinition/crmi-publishablecodesystem"]
  },
  "url" : "https://dhis2.org/fhir/cancer-registry/CodeSystem/CRMorphologyResultCS",
  "version" : "0.1.0",
  "name" : "CRMorphologyResultCS",
  "title" : "CR - Morphology result",
  "status" : "draft",
  "experimental" : false,
  "date" : "2026-04-14T07:58:39+00:00",
  "publisher" : "DHIS2",
  "contact" : [{
    "name" : "DHIS2",
    "telecom" : [{
      "system" : "url",
      "value" : "http://dhis2.org"
    }]
  }],
  "description" : "Intermediate morphology evaluation result codes used in the Multiple Primary Tester check. When the morphology comparison between two tumours is inconclusive (undecided), the check proceeds to topography evaluation. 'Invalid' indicates one of the morphology groups is invalid (0). 'Go to topography' indicates the morphology evaluation was undecided and topography comparison is needed.",
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 4,
  "concept" : [{
    "code" : "INVALID",
    "display" : "Invalid"
  },
  {
    "code" : "GO_TO_TOPOGRAPHY",
    "display" : "Go to topography"
  },
  {
    "code" : "DUPLICATE_PRIMARY",
    "display" : "Duplicate primary"
  },
  {
    "code" : "MULTIPLE_PRIMARY",
    "display" : "Multiple primary"
  }]
}

```
