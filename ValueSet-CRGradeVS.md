# CR - Grade value set - DHIS2 Cancer Registry Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **CR - Grade value set**

## ValueSet: CR - Grade value set 

| | |
| :--- | :--- |
| *Official URL*:https://dhis2.org/fhir/cancer-registry/ValueSet/CRGradeVS | *Version*:0.1.0 |
| Active as of 2026-04-10 | *Computable Name*:CRGradeVS |

 
Value set of tumour grade and differentiation codes aligned with the CanReg5 ICD-O-3.2 grade dictionary. Includes histological grades 1-4, lymphoma/leukaemia-specific codes 5-8, and unknown (9). Grade is mandatory only when behaviour is malignant (3). 

 **References** 

* [Tumor](StructureDefinition-Tumor.md)
* [Histological Grade](StructureDefinition-cr-grade-observation.md)

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
  "id" : "CRGradeVS",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/uv/crmi/StructureDefinition/crmi-shareablevalueset",
    "http://hl7.org/fhir/uv/crmi/StructureDefinition/crmi-publishablevalueset",
    "http://hl7.org/fhir/uv/crmi/StructureDefinition/crmi-computablevalueset"]
  },
  "url" : "https://dhis2.org/fhir/cancer-registry/ValueSet/CRGradeVS",
  "version" : "0.1.0",
  "name" : "CRGradeVS",
  "title" : "CR - Grade value set",
  "status" : "active",
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
  "description" : "Value set of tumour grade and differentiation codes aligned with the CanReg5 ICD-O-3.2 grade dictionary. Includes histological grades 1-4, lymphoma/leukaemia-specific codes 5-8, and unknown (9). Grade is mandatory only when behaviour is malignant (3).",
  "compose" : {
    "include" : [{
      "system" : "https://dhis2.org/fhir/cancer-registry/CodeSystem/CRGradeCS"
    }]
  }
}

```
