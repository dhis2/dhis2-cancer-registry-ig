# Example Morphology - DHIS2 Cancer Registry Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Example Morphology**

## Example Observation: Example Morphology

Profile: [Morphology](StructureDefinition-cr-morphology-observation.md)

**status**: Final

**code**: Morphology

**subject**: [Jane Doe Female, DoB: 1970-03-15 ( Medical record number)](Patient-ExampleCRPatient.md)

**encounter**: [Encounter: extension = false; status = finished; class = ambulatory (ActCode#AMB); type = Tumor Registration; period = 2026-01-01 --> (ongoing)](Encounter-ExampleTumorEncounter.md)

**effective**: 2026-01-01

**value**: Infiltrating duct carcinoma, NOS (C50._) (8500)



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "ExampleMorphology",
  "meta" : {
    "profile" : ["https://dhis2.org/fhir/cancer-registry/StructureDefinition/cr-morphology-observation"]
  },
  "status" : "final",
  "code" : {
    "coding" : [{
      "system" : "https://dhis2.org/fhir/cancer-registry/CodeSystem/cr-observation-codes",
      "code" : "morphology"
    }]
  },
  "subject" : {
    "reference" : "Patient/ExampleCRPatient"
  },
  "encounter" : {
    "reference" : "Encounter/ExampleTumorEncounter"
  },
  "effectiveDateTime" : "2026-01-01",
  "valueCodeableConcept" : {
    "coding" : [{
      "system" : "https://dhis2.org/fhir/cancer-registry/CodeSystem/CRMorphology4CS",
      "code" : "8500",
      "display" : "Infiltrating duct carcinoma, NOS (C50._) (8500)"
    }]
  }
}

```
