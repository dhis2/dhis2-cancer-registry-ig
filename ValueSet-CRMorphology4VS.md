# CR - Morphology4 value set - DHIS2 Cancer Registry Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **CR - Morphology4 value set**

## ValueSet: CR - Morphology4 value set 

| | |
| :--- | :--- |
| *Official URL*:https://dhis2.org/fhir/cancer-registry/ValueSet/CRMorphology4VS | *Version*:0.1.0 |
| Active as of 2026-04-14 | *Computable Name*:CRMorphology4VS |

 
Value set of ICD-O-3.2 morphology codes (first four digits) mapped from the CanReg5 morphology dictionary, representing histological types of neoplasms. 

 **References** 

* [Tumor](StructureDefinition-Tumor.md)
* [Morphology](StructureDefinition-cr-morphology-observation.md)

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
  "id" : "CRMorphology4VS",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/uv/crmi/StructureDefinition/crmi-shareablevalueset",
    "http://hl7.org/fhir/uv/crmi/StructureDefinition/crmi-publishablevalueset",
    "http://hl7.org/fhir/uv/crmi/StructureDefinition/crmi-computablevalueset"]
  },
  "url" : "https://dhis2.org/fhir/cancer-registry/ValueSet/CRMorphology4VS",
  "version" : "0.1.0",
  "name" : "CRMorphology4VS",
  "title" : "CR - Morphology4 value set",
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
  "description" : "Value set of ICD-O-3.2 morphology codes (first four digits) mapped from the CanReg5 morphology dictionary, representing histological types of neoplasms.",
  "compose" : {
    "include" : [{
      "system" : "https://dhis2.org/fhir/cancer-registry/CodeSystem/CRMorphology4CS"
    }]
  }
}

```
