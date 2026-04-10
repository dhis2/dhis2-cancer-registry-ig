# Example Basis of Diagnosis - DHIS2 Cancer Registry Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Example Basis of Diagnosis**

## Example Observation: Example Basis of Diagnosis

Profile: [Basis of Diagnosis](StructureDefinition-cr-basis-of-diagnosis-observation.md)

**status**: Final

**code**: Basis of Diagnosis

**subject**: [Jane Doe Female, DoB: 1970-03-15 ( Medical record number)](Patient-ExampleCRPatient.md)

**encounter**: [Encounter: extension = false; status = finished; class = ambulatory (ActCode#AMB); type = Tumor Registration; period = 2026-01-01 --> (ongoing)](Encounter-ExampleTumorEncounter.md)

**effective**: 2026-01-01

**value**: Histology of primary



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "ExampleBasisOfDiagnosis",
  "meta" : {
    "profile" : ["https://dhis2.org/fhir/cancer-registry/StructureDefinition/cr-basis-of-diagnosis-observation"]
  },
  "status" : "final",
  "code" : {
    "coding" : [{
      "system" : "https://dhis2.org/fhir/cancer-registry/CodeSystem/cr-observation-codes",
      "code" : "basis-of-diagnosis"
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
      "system" : "https://dhis2.org/fhir/cancer-registry/CodeSystem/CRBasisDiagnosisCS",
      "code" : "7",
      "display" : "Histology of primary"
    }]
  }
}

```
