# Rare Tumor Classification - DHIS2 Cancer Registry Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Rare Tumor Classification**

## Extension: Rare Tumor Classification 

| | |
| :--- | :--- |
| *Official URL*:https://dhis2.org/fhir/cancer-registry/StructureDefinition/cr-rare | *Version*:0.1.0 |
| Draft as of 2026-04-14 | *Computable Name*:CRRareExtension |

Indicates whether the registered tumor has been classified as rare according to the IARC/CanReg5 data quality checks. This is a computed flag derived from the topography-morphology combination evaluated against the IARC rare cancer reference tables. Corresponds to the CR - Rare data element in the DHIS2 Cancer Registry Tumor stage.

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [Tumor Registration Encounter](StructureDefinition-cr-tumor-encounter.md)
* Examples for this Extension: [Encounter/ExampleTumorEncounter](Encounter-ExampleTumorEncounter.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/dhis2.cancer.registry|current/StructureDefinition/cr-rare)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-cr-rare.csv), [Excel](StructureDefinition-cr-rare.xlsx), [Schematron](StructureDefinition-cr-rare.sch) 

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "cr-rare",
  "url" : "https://dhis2.org/fhir/cancer-registry/StructureDefinition/cr-rare",
  "version" : "0.1.0",
  "name" : "CRRareExtension",
  "title" : "Rare Tumor Classification",
  "status" : "draft",
  "date" : "2026-04-14T07:58:39+00:00",
  "publisher" : "DHIS2",
  "contact" : [{
    "name" : "DHIS2",
    "telecom" : [{
      "system" : "url",
      "value" : "http://dhis2.org"
    }]
  }],
  "description" : "Indicates whether the registered tumor has been classified as rare according to the IARC/CanReg5 data quality checks. This is a computed flag derived from the topography-morphology combination evaluated against the IARC rare cancer reference tables. Corresponds to the CR - Rare data element in the DHIS2 Cancer Registry Tumor stage.",
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
  }],
  "kind" : "complex-type",
  "abstract" : false,
  "context" : [{
    "type" : "element",
    "expression" : "Encounter"
  }],
  "type" : "Extension",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Extension",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Extension",
      "path" : "Extension",
      "short" : "Rare Tumor Classification",
      "definition" : "Indicates whether the registered tumor has been classified as rare according to the IARC/CanReg5 data quality checks. This is a computed flag derived from the topography-morphology combination evaluated against the IARC rare cancer reference tables. Corresponds to the CR - Rare data element in the DHIS2 Cancer Registry Tumor stage."
    },
    {
      "id" : "Extension.extension",
      "path" : "Extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "https://dhis2.org/fhir/cancer-registry/StructureDefinition/cr-rare"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "short" : "True if the tumor is classified as rare",
      "min" : 1,
      "type" : [{
        "code" : "boolean"
      }],
      "mustSupport" : true
    }]
  }
}

```
