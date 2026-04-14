# Example Incidence Date - DHIS2 Cancer Registry Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Example Incidence Date**

## Example Observation: Example Incidence Date

Profile: [Incidence Date](StructureDefinition-cr-incidence-date-observation.md)

**status**: Final

**code**: Incidence Date

**subject**: [Jane Doe Female, DoB: 1970-03-15 ( Medical record number)](Patient-ExampleCRPatient.md)

**encounter**: [Encounter: extension = false; status = finished; class = ambulatory (ActCode#AMB); type = Tumor Registration; period = 2026-01-01 --> (ongoing)](Encounter-ExampleTumorEncounter.md)

**effective**: 2026-01-01

**value**: 2026-01-01



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "ExampleIncidenceDate",
  "meta" : {
    "profile" : ["https://dhis2.org/fhir/cancer-registry/StructureDefinition/cr-incidence-date-observation"]
  },
  "status" : "final",
  "code" : {
    "coding" : [{
      "system" : "https://dhis2.org/fhir/cancer-registry/CodeSystem/cr-observation-codes",
      "code" : "incidence-date"
    }]
  },
  "subject" : {
    "reference" : "Patient/ExampleCRPatient"
  },
  "encounter" : {
    "reference" : "Encounter/ExampleTumorEncounter"
  },
  "effectiveDateTime" : "2026-01-01",
  "valueDateTime" : "2026-01-01"
}

```
