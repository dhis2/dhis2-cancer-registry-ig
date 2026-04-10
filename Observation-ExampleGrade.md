# Example Grade - DHIS2 Cancer Registry Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Example Grade**

## Example Observation: Example Grade

Profile: [Histological Grade](StructureDefinition-cr-grade-observation.md)

**status**: Final

**code**: Histology grade [Identifier] in Cancer specimen

**subject**: [Jane Doe Female, DoB: 1970-03-15 ( Medical record number)](Patient-ExampleCRPatient.md)

**encounter**: [Encounter: extension = false; status = finished; class = ambulatory (ActCode#AMB); type = Tumor Registration; period = 2026-01-01 --> (ongoing)](Encounter-ExampleTumorEncounter.md)

**effective**: 2026-01-01

**value**: Grade II



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "ExampleGrade",
  "meta" : {
    "profile" : ["https://dhis2.org/fhir/cancer-registry/StructureDefinition/cr-grade-observation"]
  },
  "status" : "final",
  "code" : {
    "coding" : [{
      "system" : "http://loinc.org",
      "code" : "33732-9"
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
      "system" : "https://dhis2.org/fhir/cancer-registry/CodeSystem/CRGradeCS",
      "code" : "2",
      "display" : "Grade II"
    }]
  }
}

```
