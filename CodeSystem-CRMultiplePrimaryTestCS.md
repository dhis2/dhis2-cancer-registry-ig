# CR - Multiple primary test - DHIS2 Cancer Registry Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **CR - Multiple primary test**

## CodeSystem: CR - Multiple primary test 

| | |
| :--- | :--- |
| *Official URL*:https://dhis2.org/fhir/cancer-registry/CodeSystem/CRMultiplePrimaryTestCS | *Version*:0.1.0 |
| Draft as of 2026-04-14 | *Computable Name*:CRMultiplePrimaryTestCS |

 
Result codes for the Multiple Primary Tester data quality check. This check determines whether two or more tumours registered for the same patient represent duplicate registrations of the same tumour or distinct multiple primary tumours, based on the CanReg5 DefaultMultiplePrimaryTester logic. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [CRMultiplePrimaryTestVS](ValueSet-CRMultiplePrimaryTestVS.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "CRMultiplePrimaryTestCS",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/uv/crmi/StructureDefinition/crmi-shareablecodesystem",
    "http://hl7.org/fhir/uv/crmi/StructureDefinition/crmi-publishablecodesystem"]
  },
  "url" : "https://dhis2.org/fhir/cancer-registry/CodeSystem/CRMultiplePrimaryTestCS",
  "version" : "0.1.0",
  "name" : "CRMultiplePrimaryTestCS",
  "title" : "CR - Multiple primary test",
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
  "description" : "Result codes for the Multiple Primary Tester data quality check. This check determines whether two or more tumours registered for the same patient represent duplicate registrations of the same tumour or distinct multiple primary tumours, based on the CanReg5 DefaultMultiplePrimaryTester logic.",
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 3,
  "concept" : [{
    "code" : "DUPLICATE_PRIMARY",
    "display" : "Duplicate primary"
  },
  {
    "code" : "MULTIPLE_PRIMARY",
    "display" : "Multiple primary"
  },
  {
    "code" : "UNKNOWN_TOPOGRAPHY",
    "display" : "Unknown topography"
  }]
}

```
