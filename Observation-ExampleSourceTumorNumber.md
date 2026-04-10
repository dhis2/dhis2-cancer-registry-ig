# Example Source Tumor Number - DHIS2 Cancer Registry Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Example Source Tumor Number**

## Example Observation: Example Source Tumor Number

Profile: [Source Tumor Number](StructureDefinition-cr-source-tumor-number-observation.md)

**status**: Final

**code**: Source Tumor Number

**subject**: [Jane Doe Female, DoB: 1970-03-15 ( Medical record number)](Patient-ExampleCRPatient.md)

**encounter**: [Encounter: status = finished; class = ambulatory (ActCode#AMB); type = Source Notification; period = 2026-01-01 --> (ongoing)](Encounter-ExampleSourceEncounter.md)

**effective**: 2026-01-01

**value**: 01



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "ExampleSourceTumorNumber",
  "meta" : {
    "profile" : ["https://dhis2.org/fhir/cancer-registry/StructureDefinition/cr-source-tumor-number-observation"]
  },
  "status" : "final",
  "code" : {
    "coding" : [{
      "system" : "https://dhis2.org/fhir/cancer-registry/CodeSystem/cr-observation-codes",
      "code" : "source-tumor-number"
    }]
  },
  "subject" : {
    "reference" : "Patient/ExampleCRPatient"
  },
  "encounter" : {
    "reference" : "Encounter/ExampleSourceEncounter"
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
