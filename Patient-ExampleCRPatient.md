# Example Cancer Registry Patient - DHIS2 Cancer Registry Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Example Cancer Registry Patient**

## Example Patient: Example Cancer Registry Patient

Profile: [Cancer Registry Patient](StructureDefinition-cr-patient.md)

Jane Doe Female, DoB: 1970-03-15 ( Medical record number)

-------



## Resource Content

```json
{
  "resourceType" : "Patient",
  "id" : "ExampleCRPatient",
  "meta" : {
    "profile" : ["https://dhis2.org/fhir/cancer-registry/StructureDefinition/cr-patient"]
  },
  "identifier" : [{
    "type" : {
      "coding" : [{
        "system" : "http://terminology.hl7.org/CodeSystem/v2-0203",
        "code" : "MR"
      }]
    },
    "system" : "https://dhis2.org/fhir/cancer-registry/regno",
    "value" : "20240001"
  }],
  "name" : [{
    "family" : "Doe",
    "given" : ["Jane"]
  }],
  "gender" : "female",
  "birthDate" : "1970-03-15"
}

```
