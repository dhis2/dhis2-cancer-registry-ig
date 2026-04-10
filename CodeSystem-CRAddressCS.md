# CR - Address - DHIS2 Cancer Registry Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **CR - Address**

## CodeSystem: CR - Address 

| | |
| :--- | :--- |
| *Official URL*:https://dhis2.org/fhir/cancer-registry/CodeSystem/CRAddressCS | *Version*:0.1.0 |
| Draft as of 2026-04-10 | *Computable Name*:CRAddressCS |

 
Address codes containing placeholder values that must be customised prior to implementation to reflect the administrative geography of the country or region. The recommended approach uses text-type data elements combined with dependent dropdown lists, aligning with the CanReg5 convention where the address variable is two characters in length encoding a combination of two administrative levels. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [CRAddressVS](ValueSet-CRAddressVS.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "CRAddressCS",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/uv/crmi/StructureDefinition/crmi-shareablecodesystem",
    "http://hl7.org/fhir/uv/crmi/StructureDefinition/crmi-publishablecodesystem"]
  },
  "url" : "https://dhis2.org/fhir/cancer-registry/CodeSystem/CRAddressCS",
  "version" : "0.1.0",
  "name" : "CRAddressCS",
  "title" : "CR - Address",
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
  "description" : "Address codes containing placeholder values that must be customised prior to implementation to reflect the administrative geography of the country or region. The recommended approach uses text-type data elements combined with dependent dropdown lists, aligning with the CanReg5 convention where the address variable is two characters in length encoding a combination of two administrative levels.",
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 3,
  "concept" : [{
    "code" : "01",
    "display" : "Placeholder - 1"
  },
  {
    "code" : "02",
    "display" : "Placeholder - 2"
  },
  {
    "code" : "99",
    "display" : "Placeholder - X"
  }]
}

```
