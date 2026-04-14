# Morphology - DHIS2 Cancer Registry Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Morphology**

## Resource Profile: Morphology 

| | |
| :--- | :--- |
| *Official URL*:https://dhis2.org/fhir/cancer-registry/StructureDefinition/cr-morphology-observation | *Version*:0.1.0 |
| Draft as of 2026-04-14 | *Computable Name*:CRMorphologyObservation |

 
ICD-O-3 morphology code (4-digit histological type) of the neoplasm, e.g. 8500 = infiltrating duct carcinoma. Corresponds to the CR - Morphology data element in the DHIS2 Cancer Registry Tumor stage. 

**Usages:**

* Examples for this Profile: [Observation/ExampleMorphology](Observation-ExampleMorphology.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/dhis2.cancer.registry|current/StructureDefinition/cr-morphology-observation)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-cr-morphology-observation.csv), [Excel](StructureDefinition-cr-morphology-observation.xlsx), [Schematron](StructureDefinition-cr-morphology-observation.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "cr-morphology-observation",
  "url" : "https://dhis2.org/fhir/cancer-registry/StructureDefinition/cr-morphology-observation",
  "version" : "0.1.0",
  "name" : "CRMorphologyObservation",
  "title" : "Morphology",
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
  "description" : "ICD-O-3 morphology code (4-digit histological type) of the neoplasm, e.g. 8500 = infiltrating duct carcinoma. Corresponds to the CR - Morphology data element in the DHIS2 Cancer Registry Tumor stage.",
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "workflow",
    "uri" : "http://hl7.org/fhir/workflow",
    "name" : "Workflow Pattern"
  },
  {
    "identity" : "sct-concept",
    "uri" : "http://snomed.info/conceptdomain",
    "name" : "SNOMED CT Concept Domain Binding"
  },
  {
    "identity" : "v2",
    "uri" : "http://hl7.org/v2",
    "name" : "HL7 v2 Mapping"
  },
  {
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
  },
  {
    "identity" : "w5",
    "uri" : "http://hl7.org/fhir/fivews",
    "name" : "FiveWs Pattern Mapping"
  },
  {
    "identity" : "sct-attr",
    "uri" : "http://snomed.org/attributebinding",
    "name" : "SNOMED CT Attribute Binding"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Observation",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Observation",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Observation",
      "path" : "Observation"
    },
    {
      "id" : "Observation.status",
      "path" : "Observation.status",
      "mustSupport" : true
    },
    {
      "id" : "Observation.code",
      "path" : "Observation.code",
      "short" : "Morphology",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "https://dhis2.org/fhir/cancer-registry/CodeSystem/cr-observation-codes",
          "code" : "morphology"
        }]
      }
    },
    {
      "id" : "Observation.subject",
      "path" : "Observation.subject",
      "min" : 1,
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://dhis2.org/fhir/cancer-registry/StructureDefinition/cr-patient"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Observation.encounter",
      "path" : "Observation.encounter",
      "min" : 1,
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://dhis2.org/fhir/cancer-registry/StructureDefinition/cr-tumor-encounter"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Observation.value[x]",
      "path" : "Observation.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "mustSupport" : true,
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://dhis2.org/fhir/cancer-registry/ValueSet/CRMorphology4VS"
      }
    }]
  }
}

```
