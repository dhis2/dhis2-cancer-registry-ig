# Example Topography - DHIS2 Cancer Registry Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Example Topography**

## Example Observation: Example Topography

Profile: [Topography](StructureDefinition-cr-topography-observation.md)

**status**: Final

**code**: Topography

**subject**: [Jane Doe Female, DoB: 1970-03-15 ( Medical record number)](Patient-ExampleCRPatient.md)

**encounter**: [Encounter: extension = false; status = finished; class = ambulatory (ActCode#AMB); type = Tumor Registration; period = 2026-01-01 --> (ongoing)](Encounter-ExampleTumorEncounter.md)

**effective**: 2026-01-01

**value**: Upper-outer quadrant of breast (504)



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "ExampleTopography",
  "meta" : {
    "profile" : ["https://dhis2.org/fhir/cancer-registry/StructureDefinition/cr-topography-observation"]
  },
  "status" : "final",
  "code" : {
    "coding" : [{
      "system" : "https://dhis2.org/fhir/cancer-registry/CodeSystem/cr-observation-codes",
      "code" : "topography"
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
      "system" : "https://dhis2.org/fhir/cancer-registry/CodeSystem/CRTopographyCS",
      "code" : "504",
      "display" : "Upper-outer quadrant of breast (504)"
    }]
  }
}

```
