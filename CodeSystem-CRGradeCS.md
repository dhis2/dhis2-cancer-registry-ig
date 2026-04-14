# CR - Grade - DHIS2 Cancer Registry Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **CR - Grade**

## CodeSystem: CR - Grade 

| | |
| :--- | :--- |
| *Official URL*:https://dhis2.org/fhir/cancer-registry/CodeSystem/CRGradeCS | *Version*:0.1.0 |
| Draft as of 2026-04-14 | *Computable Name*:CRGradeCS |

 
Tumour grade and differentiation codes aligned with the CanReg5 ICD-O-3.2 grade dictionary. Codes 1-4 represent histological grade (well differentiated to undifferentiated/anaplastic). Codes 5-8 are reserved for lymphomas and leukaemias (T-cell, B-cell, Null cell, NK cell). Code 9 represents unknown/not stated. Grade is mandatory only when behaviour is malignant (3). These codes are used in the Grade data quality check. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [CRGradeVS](ValueSet-CRGradeVS.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "CRGradeCS",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/uv/crmi/StructureDefinition/crmi-shareablecodesystem",
    "http://hl7.org/fhir/uv/crmi/StructureDefinition/crmi-publishablecodesystem"]
  },
  "url" : "https://dhis2.org/fhir/cancer-registry/CodeSystem/CRGradeCS",
  "version" : "0.1.0",
  "name" : "CRGradeCS",
  "title" : "CR - Grade",
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
  "description" : "Tumour grade and differentiation codes aligned with the CanReg5 ICD-O-3.2 grade dictionary. Codes 1-4 represent histological grade (well differentiated to undifferentiated/anaplastic). Codes 5-8 are reserved for lymphomas and leukaemias (T-cell, B-cell, Null cell, NK cell). Code 9 represents unknown/not stated. Grade is mandatory only when behaviour is malignant (3). These codes are used in the Grade data quality check.",
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 9,
  "concept" : [{
    "code" : "1",
    "display" : "Grade I (1)"
  },
  {
    "code" : "2",
    "display" : "Grade II (2)"
  },
  {
    "code" : "3",
    "display" : "Grade III (3)"
  },
  {
    "code" : "4",
    "display" : "Grade IV (4)"
  },
  {
    "code" : "5",
    "display" : "T-Cell (5)"
  },
  {
    "code" : "6",
    "display" : "B-Cell (6)"
  },
  {
    "code" : "7",
    "display" : "Null cell (7)"
  },
  {
    "code" : "8",
    "display" : "NK cell (8)"
  },
  {
    "code" : "9",
    "display" : "Unknown/Not Stated/NA (9)"
  }]
}

```
