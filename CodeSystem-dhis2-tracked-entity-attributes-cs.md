# DHIS2 Tracked Entity Attributes - DHIS2 Cancer Registry Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **DHIS2 Tracked Entity Attributes**

## CodeSystem: DHIS2 Tracked Entity Attributes 

| | |
| :--- | :--- |
| *Official URL*:https://dhis2.org/fhir/cancer-registry/CodeSystem/dhis2-tracked-entity-attributes-cs | *Version*:0.1.0 |
| Draft as of 2026-04-10 | *Computable Name*:Dhis2TrackedEntityAttributesCS |

 
Code system for 5 unique DHIS2 tracked entity attributes 

 This Code system is referenced in the content logical definition of the following value sets: 

* This CodeSystem is not used here; it may be used elsewhere (e.g. specifications and/or implementations that use this content)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "dhis2-tracked-entity-attributes-cs",
  "url" : "https://dhis2.org/fhir/cancer-registry/CodeSystem/dhis2-tracked-entity-attributes-cs",
  "version" : "0.1.0",
  "name" : "Dhis2TrackedEntityAttributesCS",
  "title" : "DHIS2 Tracked Entity Attributes",
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
  "description" : "Code system for 5 unique DHIS2 tracked entity attributes",
  "content" : "complete",
  "count" : 5,
  "concept" : [{
    "code" : "hDEhIMZe07x",
    "display" : "CR - Patient ID",
    "definition" : "CR - Patient ID"
  },
  {
    "code" : "nJsmdQXRoze",
    "display" : "GEN - Family name",
    "definition" : "Family name or last name of the person or case."
  },
  {
    "code" : "sB1IHYu2xQT",
    "display" : "GEN - Given name",
    "definition" : "Given name or first name of the person or case."
  },
  {
    "code" : "m7GEZG8cyCO",
    "display" : "CR - Sex",
    "definition" : "CR - Sex"
  },
  {
    "code" : "NI0QRzJvQ0k",
    "display" : "GEN - Date of birth",
    "definition" : "Date of birth. This field can also be used when the date of birth is estimated, in conjunction with another attribute that indicates whether the birth date is estimated."
  }]
}

```
