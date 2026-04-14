# CR - Morphology Group - DHIS2 Cancer Registry Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **CR - Morphology Group**

## CodeSystem: CR - Morphology Group 

| | |
| :--- | :--- |
| *Official URL*:https://dhis2.org/fhir/cancer-registry/CodeSystem/CRMorphologyGroupCS | *Version*:0.1.0 |
| Draft as of 2026-04-14 | *Computable Name*:CRMorphologyGroupCS |

 
Morphology group codes used in the Multiple Primary Tester data quality check. Groups are derived from morphology codes using the mapping logic defined in the CanReg5 DefaultMultiplePrimaryTester class. Groups 8-14 represent haematopoietic/lymphoid tissue subtypes (systemic groups). Group 0 indicates an invalid morphology, and group 17 indicates an unspecified morphology. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [CRMorphologyGroupVS](ValueSet-CRMorphologyGroupVS.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "CRMorphologyGroupCS",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/uv/crmi/StructureDefinition/crmi-shareablecodesystem",
    "http://hl7.org/fhir/uv/crmi/StructureDefinition/crmi-publishablecodesystem"]
  },
  "url" : "https://dhis2.org/fhir/cancer-registry/CodeSystem/CRMorphologyGroupCS",
  "version" : "0.1.0",
  "name" : "CRMorphologyGroupCS",
  "title" : "CR - Morphology Group",
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
  "description" : "Morphology group codes used in the Multiple Primary Tester data quality check. Groups are derived from morphology codes using the mapping logic defined in the CanReg5 DefaultMultiplePrimaryTester class. Groups 8-14 represent haematopoietic/lymphoid tissue subtypes (systemic groups). Group 0 indicates an invalid morphology, and group 17 indicates an unspecified morphology.",
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 18,
  "concept" : [{
    "code" : "0",
    "display" : "Invalid (0)"
  },
  {
    "code" : "1",
    "display" : "Squamous & Transitional cell carcinomas (1)"
  },
  {
    "code" : "2",
    "display" : "Basal Cell carcinomas (2)"
  },
  {
    "code" : "3",
    "display" : "Adenocarcinomas (3)"
  },
  {
    "code" : "4",
    "display" : "Other specific Carcinomas (4)"
  },
  {
    "code" : "5",
    "display" : "Unspecified Carcinomas (5)"
  },
  {
    "code" : "6",
    "display" : "Sarcomas & other soft tissue tumors (6)"
  },
  {
    "code" : "7",
    "display" : "Mesotheliomas (7)"
  },
  {
    "code" : "8",
    "display" : "Hematopoietic, lymphoid tissue: Myeloid (8)"
  },
  {
    "code" : "9",
    "display" : "Hematopoietic, lymphoid tissue: B-Cell (9)"
  },
  {
    "code" : "10",
    "display" : "Hematopoietic, lymphoid tissue: T-Cell, NK-Cell (10)"
  },
  {
    "code" : "11",
    "display" : "Hematopoietic, lymphoid tissue: Hodgkin Lymphoma (11)"
  },
  {
    "code" : "12",
    "display" : "Hematopoietic, lymphoid tissue: Mast-cell (12)"
  },
  {
    "code" : "13",
    "display" : "Hematopoietic, lymphoid tissue: Histiocytes, Accessory Lymphoid cells (13)"
  },
  {
    "code" : "14",
    "display" : "Hematopoietic, lymphoid tissue: Unspecified types (14)"
  },
  {
    "code" : "15",
    "display" : "Kaposi sarcoma (15)"
  },
  {
    "code" : "16",
    "display" : "Other specified (16)"
  },
  {
    "code" : "17",
    "display" : "Unspecified (17)"
  }]
}

```
