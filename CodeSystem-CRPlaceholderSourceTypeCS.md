# CR - Placeholder: Source type - DHIS2 Cancer Registry Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **CR - Placeholder: Source type**

## CodeSystem: CR - Placeholder: Source type 

| | |
| :--- | :--- |
| *Official URL*:https://dhis2.org/fhir/cancer-registry/CodeSystem/CRPlaceholderSourceTypeCS | *Version*:0.1.0 |
| Draft as of 2026-04-10 | *Computable Name*:CRPlaceholderSourceTypeCS |

 
Placeholder source type codes for the Source stage. These values must be customised prior to implementation to reflect the source types relevant to the local registry context (e.g. hospital records, pathology laboratory reports, death certificates). 

 This Code system is referenced in the content logical definition of the following value sets: 

* [CRPlaceholderSourceTypeVS](ValueSet-CRPlaceholderSourceTypeVS.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "CRPlaceholderSourceTypeCS",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/uv/crmi/StructureDefinition/crmi-shareablecodesystem",
    "http://hl7.org/fhir/uv/crmi/StructureDefinition/crmi-publishablecodesystem"]
  },
  "url" : "https://dhis2.org/fhir/cancer-registry/CodeSystem/CRPlaceholderSourceTypeCS",
  "version" : "0.1.0",
  "name" : "CRPlaceholderSourceTypeCS",
  "title" : "CR - Placeholder: Source type",
  "status" : "draft",
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
  "description" : "Placeholder source type codes for the Source stage. These values must be customised prior to implementation to reflect the source types relevant to the local registry context (e.g. hospital records, pathology laboratory reports, death certificates).",
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 3,
  "concept" : [{
    "code" : "PLACEHOLDER_1",
    "display" : "Placeholder - 1"
  },
  {
    "code" : "PLACEHOLDER_2",
    "display" : "Placeholder - 2"
  },
  {
    "code" : "PLACEHOLDER_X",
    "display" : "Placeholder - X"
  }]
}

```
