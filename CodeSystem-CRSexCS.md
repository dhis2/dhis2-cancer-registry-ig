# CR - Sex - DHIS2 Cancer Registry Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **CR - Sex**

## CodeSystem: CR - Sex 

| | |
| :--- | :--- |
| *Official URL*:https://dhis2.org/fhir/cancer-registry/CodeSystem/CRSexCS | *Version*:0.1.0 |
| Draft as of 2026-04-14 | *Computable Name*:CRSexCS |

 
Sex codes aligned with the CanReg5 sex dictionary, using numeric codes. These codes are referenced in multiple data quality checks throughout the program, including the Sex-Topography and Sex-Morphology checks. Any modification to these codes or substitution with a differently coded option set would break the logic of those checks. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [CRSexVS](ValueSet-CRSexVS.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "CRSexCS",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/uv/crmi/StructureDefinition/crmi-shareablecodesystem",
    "http://hl7.org/fhir/uv/crmi/StructureDefinition/crmi-publishablecodesystem"]
  },
  "url" : "https://dhis2.org/fhir/cancer-registry/CodeSystem/CRSexCS",
  "version" : "0.1.0",
  "name" : "CRSexCS",
  "title" : "CR - Sex",
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
  "description" : "Sex codes aligned with the CanReg5 sex dictionary, using numeric codes. These codes are referenced in multiple data quality checks throughout the program, including the Sex-Topography and Sex-Morphology checks. Any modification to these codes or substitution with a differently coded option set would break the logic of those checks.",
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 3,
  "concept" : [{
    "code" : "1",
    "display" : "Male"
  },
  {
    "code" : "2",
    "display" : "Female"
  },
  {
    "code" : "9",
    "display" : "Unknown"
  }]
}

```
