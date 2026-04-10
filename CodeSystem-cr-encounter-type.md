# Cancer Registry Encounter Types - DHIS2 Cancer Registry Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Cancer Registry Encounter Types**

## CodeSystem: Cancer Registry Encounter Types 

| | |
| :--- | :--- |
| *Official URL*:https://dhis2.org/fhir/cancer-registry/CodeSystem/cr-encounter-type | *Version*:0.1.0 |
| Draft as of 2026-04-10 | *Computable Name*:CREncounterTypeCS |

 
Encounter types representing the three repeatable program stages of the DHIS2 Cancer Registry tracker program. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [CREncounterTypeVS](ValueSet-cr-encounter-type-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "cr-encounter-type",
  "url" : "https://dhis2.org/fhir/cancer-registry/CodeSystem/cr-encounter-type",
  "version" : "0.1.0",
  "name" : "CREncounterTypeCS",
  "title" : "Cancer Registry Encounter Types",
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
  "description" : "Encounter types representing the three repeatable program stages of the DHIS2 Cancer Registry tracker program.",
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 3,
  "concept" : [{
    "code" : "tumor",
    "display" : "Tumor Registration",
    "definition" : "Encounter capturing clinical and epidemiological data for a single registered tumour (DHIS2 Tumor stage)."
  },
  {
    "code" : "source",
    "display" : "Source Notification",
    "definition" : "Encounter recording a documentation source that notified the registry about a cancer case (DHIS2 Source stage)."
  },
  {
    "code" : "follow-up",
    "display" : "Follow-up Contact",
    "definition" : "Encounter recording a follow-up contact with the registered patient to ascertain vital status (DHIS2 Follow-up stage)."
  }]
}

```
