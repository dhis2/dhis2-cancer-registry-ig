# CR - Tumor number - DHIS2 Cancer Registry Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **CR - Tumor number**

## CodeSystem: CR - Tumor number 

| | |
| :--- | :--- |
| *Official URL*:https://dhis2.org/fhir/cancer-registry/CodeSystem/CRTumorNumberCS | *Version*:0.1.0 |
| Draft as of 2026-04-14 | *Computable Name*:CRTumorNumberCS |

 
Tumor number codes used as a unique identifier for each tumor within the registry. Combined with the Patient ID, the Tumor Number constitutes the Tumor ID (the composite identifier that uniquely identifies a tumor record). A validation mechanism prevents the same tumor number from being assigned to more than one tumor belonging to the same patient. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [CRTumorNumberVS](ValueSet-CRTumorNumberVS.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "CRTumorNumberCS",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/uv/crmi/StructureDefinition/crmi-shareablecodesystem",
    "http://hl7.org/fhir/uv/crmi/StructureDefinition/crmi-publishablecodesystem"]
  },
  "url" : "https://dhis2.org/fhir/cancer-registry/CodeSystem/CRTumorNumberCS",
  "version" : "0.1.0",
  "name" : "CRTumorNumberCS",
  "title" : "CR - Tumor number",
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
  "description" : "Tumor number codes used as a unique identifier for each tumor within the registry. Combined with the Patient ID, the Tumor Number constitutes the Tumor ID (the composite identifier that uniquely identifies a tumor record). A validation mechanism prevents the same tumor number from being assigned to more than one tumor belonging to the same patient.",
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 10,
  "concept" : [{
    "code" : "01",
    "display" : "01"
  },
  {
    "code" : "02",
    "display" : "02"
  },
  {
    "code" : "03",
    "display" : "03"
  },
  {
    "code" : "04",
    "display" : "04"
  },
  {
    "code" : "05",
    "display" : "05"
  },
  {
    "code" : "06",
    "display" : "06"
  },
  {
    "code" : "07",
    "display" : "07"
  },
  {
    "code" : "08",
    "display" : "08"
  },
  {
    "code" : "09",
    "display" : "09"
  },
  {
    "code" : "10",
    "display" : "10"
  }]
}

```
