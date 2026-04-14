# CR - Vital status value set - DHIS2 Cancer Registry Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **CR - Vital status value set**

## ValueSet: CR - Vital status value set 

| | |
| :--- | :--- |
| *Official URL*:https://dhis2.org/fhir/cancer-registry/ValueSet/CRVitalStatusVS | *Version*:0.1.0 |
| Active as of 2026-04-14 | *Computable Name*:CRVitalStatusVS |

 
Value set of vital status codes used in the Follow-up stage to record the current status of the registered patient. 

 **References** 

* [Follow up](StructureDefinition-FollowUp.md)
* [Vital Status](StructureDefinition-cr-vital-status-observation.md)

### Logical Definition (CLD)

 

### Expansion

-------

 Explanation of the columns that may appear on this page: 

| | |
| :--- | :--- |
| Level | A few code lists that FHIR defines are hierarchical - each code is assigned a level. In this scheme, some codes are under other codes, and imply that the code they are under also applies |
| System | The source of the definition of the code (when the value set draws in codes defined elsewhere) |
| Code | The code (used as the code in the resource instance) |
| Display | The display (used in the*display*element of a[Coding](http://hl7.org/fhir/R4/datatypes.html#Coding)). If there is no display, implementers should not simply display the code, but map the concept into their application |
| Definition | An explanation of the meaning of the concept |
| Comments | Additional notes about how to use the code |



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "CRVitalStatusVS",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/uv/crmi/StructureDefinition/crmi-shareablevalueset",
    "http://hl7.org/fhir/uv/crmi/StructureDefinition/crmi-publishablevalueset",
    "http://hl7.org/fhir/uv/crmi/StructureDefinition/crmi-computablevalueset"]
  },
  "url" : "https://dhis2.org/fhir/cancer-registry/ValueSet/CRVitalStatusVS",
  "version" : "0.1.0",
  "name" : "CRVitalStatusVS",
  "title" : "CR - Vital status value set",
  "status" : "active",
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
  "description" : "Value set of vital status codes used in the Follow-up stage to record the current status of the registered patient.",
  "compose" : {
    "include" : [{
      "system" : "https://dhis2.org/fhir/cancer-registry/CodeSystem/CRVitalStatusCS"
    }]
  }
}

```
