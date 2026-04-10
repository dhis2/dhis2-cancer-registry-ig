# CR - Vital status - DHIS2 Cancer Registry Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **CR - Vital status**

## CodeSystem: CR - Vital status 

| | |
| :--- | :--- |
| *Official URL*:https://dhis2.org/fhir/cancer-registry/CodeSystem/CRVitalStatusCS | *Version*:0.1.0 |
| Draft as of 2026-04-10 | *Computable Name*:CRVitalStatusCS |

 
Vital status codes used in the Follow-up stage to record the current status of the registered patient. When the status is 'Died', the date of death must also be recorded. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [CRVitalStatusVS](ValueSet-CRVitalStatusVS.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "CRVitalStatusCS",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/uv/crmi/StructureDefinition/crmi-shareablecodesystem",
    "http://hl7.org/fhir/uv/crmi/StructureDefinition/crmi-publishablecodesystem"]
  },
  "url" : "https://dhis2.org/fhir/cancer-registry/CodeSystem/CRVitalStatusCS",
  "version" : "0.1.0",
  "name" : "CRVitalStatusCS",
  "title" : "CR - Vital status",
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
  "description" : "Vital status codes used in the Follow-up stage to record the current status of the registered patient. When the status is 'Died', the date of death must also be recorded.",
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 3,
  "concept" : [{
    "code" : "1",
    "display" : "Alive"
  },
  {
    "code" : "2",
    "display" : "Died"
  },
  {
    "code" : "9",
    "display" : "Unknown"
  }]
}

```
