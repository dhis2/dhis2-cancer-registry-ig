# Example Source Type - DHIS2 Cancer Registry Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Example Source Type**

## Example Observation: Example Source Type

Profile: [Source Type](StructureDefinition-cr-source-type-observation.md)

**status**: Final

**code**: Source Type

**subject**: [Jane Doe Female, DoB: 1970-03-15 ( Medical record number)](Patient-ExampleCRPatient.md)

**encounter**: [Encounter: status = finished; class = ambulatory (ActCode#AMB); type = Source Notification; period = 2026-01-01 --> (ongoing)](Encounter-ExampleSourceEncounter.md)

**effective**: 2026-01-01

**value**: Hospital pathology department



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "ExampleSourceType",
  "meta" : {
    "profile" : ["https://dhis2.org/fhir/cancer-registry/StructureDefinition/cr-source-type-observation"]
  },
  "status" : "final",
  "code" : {
    "coding" : [{
      "system" : "https://dhis2.org/fhir/cancer-registry/CodeSystem/cr-observation-codes",
      "code" : "source-type"
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
    "text" : "Hospital pathology department"
  }
}

```
