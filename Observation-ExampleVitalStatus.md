# Example Vital Status - DHIS2 Cancer Registry Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Example Vital Status**

## Example Observation: Example Vital Status

Profile: [Vital Status](StructureDefinition-cr-vital-status-observation.md)

**status**: Final

**code**: Vital Status

**subject**: [Jane Doe Female, DoB: 1970-03-15 ( Medical record number)](Patient-ExampleCRPatient.md)

**encounter**: [Encounter: status = finished; class = ambulatory (ActCode#AMB); type = Follow-up Contact; period = 2026-01-01 --> (ongoing)](Encounter-ExampleFollowUpEncounter.md)

**effective**: 2026-01-01

**value**: Alive



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "ExampleVitalStatus",
  "meta" : {
    "profile" : ["https://dhis2.org/fhir/cancer-registry/StructureDefinition/cr-vital-status-observation"]
  },
  "status" : "final",
  "code" : {
    "coding" : [{
      "system" : "https://dhis2.org/fhir/cancer-registry/CodeSystem/cr-observation-codes",
      "code" : "vital-status"
    }]
  },
  "subject" : {
    "reference" : "Patient/ExampleCRPatient"
  },
  "encounter" : {
    "reference" : "Encounter/ExampleFollowUpEncounter"
  },
  "effectiveDateTime" : "2026-01-01",
  "valueCodeableConcept" : {
    "coding" : [{
      "system" : "https://dhis2.org/fhir/cancer-registry/CodeSystem/CRVitalStatusCS",
      "code" : "1",
      "display" : "Alive"
    }]
  }
}

```
