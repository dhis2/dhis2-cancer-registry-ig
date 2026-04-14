# Example Tumor Number - DHIS2 Cancer Registry Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Example Tumor Number**

## Example Observation: Example Tumor Number

Profile: [Tumor Number](StructureDefinition-cr-tumor-number-observation.md)

**status**: Final

**code**: Tumor Number

**subject**: [Jane Doe Female, DoB: 1970-03-15 ( Medical record number)](Patient-ExampleCRPatient.md)

**encounter**: [Encounter: extension = false; status = finished; class = ambulatory (ActCode#AMB); type = Tumor Registration; period = 2026-01-01 --> (ongoing)](Encounter-ExampleTumorEncounter.md)

**effective**: 2026-01-01

**value**: 01



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "ExampleTumorNumber",
  "meta" : {
    "profile" : ["https://dhis2.org/fhir/cancer-registry/StructureDefinition/cr-tumor-number-observation"]
  },
  "status" : "final",
  "code" : {
    "coding" : [{
      "system" : "https://dhis2.org/fhir/cancer-registry/CodeSystem/cr-observation-codes",
      "code" : "tumor-number"
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
      "system" : "https://dhis2.org/fhir/cancer-registry/CodeSystem/CRTumorNumberCS",
      "code" : "01",
      "display" : "01"
    }]
  }
}

```
