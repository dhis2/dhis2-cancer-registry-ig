# Example Cancer Registration Episode - DHIS2 Cancer Registry Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Example Cancer Registration Episode**

## Example EpisodeOfCare: Example Cancer Registration Episode

Profile: [Cancer Registration EpisodeOfCare](StructureDefinition-cr-cancer-registration-episode.md)

**status**: Active

**patient**: [Jane Doe Female, DoB: 1970-03-15 ( Medical record number)](Patient-ExampleCRPatient.md)

**period**: 2026-01-01 --> (ongoing)



## Resource Content

```json
{
  "resourceType" : "EpisodeOfCare",
  "id" : "ExampleCRRegistrationEpisode",
  "meta" : {
    "profile" : ["https://dhis2.org/fhir/cancer-registry/StructureDefinition/cr-cancer-registration-episode"]
  },
  "status" : "active",
  "patient" : {
    "reference" : "Patient/ExampleCRPatient"
  },
  "period" : {
    "start" : "2026-01-01"
  }
}

```
