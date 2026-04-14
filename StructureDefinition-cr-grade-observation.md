# Histological Grade - DHIS2 Cancer Registry Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Histological Grade**

## Resource Profile: Histological Grade 

| | |
| :--- | :--- |
| *Official URL*:https://dhis2.org/fhir/cancer-registry/StructureDefinition/cr-grade-observation | *Version*:0.1.0 |
| Draft as of 2026-04-14 | *Computable Name*:CRGradeObservation |

 
Histological grade (differentiation) of the tumour as defined in ICD-O-3. LOINC 33732-9. Grade codes: 1=well differentiated, 2=moderately differentiated, 3=poorly differentiated, 4=undifferentiated, 5–8=lymphomas/leukaemias, 9=not determined. Corresponds to the CR - Grade data element in the DHIS2 Cancer Registry Tumor stage. 

**Usages:**

* Examples for this Profile: [Observation/ExampleGrade](Observation-ExampleGrade.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/dhis2.cancer.registry|current/StructureDefinition/cr-grade-observation)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-cr-grade-observation.csv), [Excel](StructureDefinition-cr-grade-observation.xlsx), [Schematron](StructureDefinition-cr-grade-observation.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "cr-grade-observation",
  "url" : "https://dhis2.org/fhir/cancer-registry/StructureDefinition/cr-grade-observation",
  "version" : "0.1.0",
  "name" : "CRGradeObservation",
  "title" : "Histological Grade",
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
  "description" : "Histological grade (differentiation) of the tumour as defined in ICD-O-3. LOINC 33732-9. Grade codes: 1=well differentiated, 2=moderately differentiated, 3=poorly differentiated, 4=undifferentiated, 5–8=lymphomas/leukaemias, 9=not determined. Corresponds to the CR - Grade data element in the DHIS2 Cancer Registry Tumor stage.",
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
      "short" : "LOINC 33732-9: Histology grade [Identifier] in Cancer specimen",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "http://loinc.org",
          "code" : "33732-9"
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
        "valueSet" : "https://dhis2.org/fhir/cancer-registry/ValueSet/CRGradeVS"
      }
    }]
  }
}

```
