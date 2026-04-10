# CR - Topography Morphology key - DHIS2 Cancer Registry Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **CR - Topography Morphology key**

## CodeSystem: CR - Topography Morphology key 

| | |
| :--- | :--- |
| *Official URL*:https://dhis2.org/fhir/cancer-registry/CodeSystem/CRTopographyMorphologyKeyCS | *Version*:0.1.0 |
| Draft as of 2026-04-10 | *Computable Name*:CRTopographyMorphologyKeyCS |

 
Keys used in the Topography-Morphology data quality check to determine how each morphological family relates to topography. NA (*): the family is accepted with any topography. Plus (+): the family has a restricted set of expected topography sites checked against the MUST list. Minus (-): the family has a restricted set of prohibited topography sites checked against the MUST-NOT list. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [CRTopographyMorphologyKeyVS](ValueSet-CRTopographyMorphologyKeyVS.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "CRTopographyMorphologyKeyCS",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/uv/crmi/StructureDefinition/crmi-shareablecodesystem",
    "http://hl7.org/fhir/uv/crmi/StructureDefinition/crmi-publishablecodesystem"]
  },
  "url" : "https://dhis2.org/fhir/cancer-registry/CodeSystem/CRTopographyMorphologyKeyCS",
  "version" : "0.1.0",
  "name" : "CRTopographyMorphologyKeyCS",
  "title" : "CR - Topography Morphology key",
  "status" : "draft",
  "experimental" : false,
  "date" : "2026-04-10T12:38:15+00:00",
  "publisher" : "DHIS2",
  "contact" : [{
    "name" : "DHIS2",
    "telecom" : [{
      "system" : "url",
      "value" : "http://dhis2.org"
    }]
  }],
  "description" : "Keys used in the Topography-Morphology data quality check to determine how each morphological family relates to topography. NA (*): the family is accepted with any topography. Plus (+): the family has a restricted set of expected topography sites checked against the MUST list. Minus (-): the family has a restricted set of prohibited topography sites checked against the MUST-NOT list.",
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 3,
  "concept" : [{
    "code" : "NA",
    "display" : "*"
  },
  {
    "code" : "PLUS",
    "display" : "+"
  },
  {
    "code" : "MINUS",
    "display" : "-"
  }]
}

```
