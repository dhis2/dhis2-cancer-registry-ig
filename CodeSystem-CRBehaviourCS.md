# CR - Behaviour - DHIS2 Cancer Registry Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **CR - Behaviour**

## CodeSystem: CR - Behaviour 

| | |
| :--- | :--- |
| *Official URL*:https://dhis2.org/fhir/cancer-registry/CodeSystem/CRBehaviourCS | *Version*:0.1.0 |
| Draft as of 2026-04-14 | *Computable Name*:CRBehaviourCS |

 
Tumour behaviour codes aligned with the CanReg5 ICD-O-3.2 behaviour dictionary. Used in the Tumor stage to classify the biological behaviour of the neoplasm. These codes are referenced in data quality checks including the Topography-Behaviour and Sex-Morphology checks. Codes must not be modified as they are mapped directly to CanReg5 standards. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [CRBehaviourVS](ValueSet-CRBehaviourVS.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "CRBehaviourCS",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/uv/crmi/StructureDefinition/crmi-shareablecodesystem",
    "http://hl7.org/fhir/uv/crmi/StructureDefinition/crmi-publishablecodesystem"]
  },
  "url" : "https://dhis2.org/fhir/cancer-registry/CodeSystem/CRBehaviourCS",
  "version" : "0.1.0",
  "name" : "CRBehaviourCS",
  "title" : "CR - Behaviour",
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
  "description" : "Tumour behaviour codes aligned with the CanReg5 ICD-O-3.2 behaviour dictionary. Used in the Tumor stage to classify the biological behaviour of the neoplasm. These codes are referenced in data quality checks including the Topography-Behaviour and Sex-Morphology checks. Codes must not be modified as they are mapped directly to CanReg5 standards.",
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 4,
  "concept" : [{
    "code" : "0",
    "display" : "Benign (0)"
  },
  {
    "code" : "1",
    "display" : "Uncertain (1)"
  },
  {
    "code" : "2",
    "display" : "In situ (2)"
  },
  {
    "code" : "3",
    "display" : "Malignant (3)"
  }]
}

```
