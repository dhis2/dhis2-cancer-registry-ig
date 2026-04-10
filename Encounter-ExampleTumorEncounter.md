# Example Tumor Encounter - DHIS2 Cancer Registry Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Example Tumor Encounter**

## Example Encounter: Example Tumor Encounter

Profile: [Tumor Registration Encounter](StructureDefinition-cr-tumor-encounter.md)

**Rare Tumor Classification**: false

**status**: Finished

**class**: [ActCode: AMB](http://terminology.hl7.org/7.1.0/CodeSystem-v3-ActCode.html#v3-ActCode-AMB) (ambulatory)

**type**: Tumor Registration

**subject**: [Jane Doe Female, DoB: 1970-03-15 ( Medical record number)](Patient-ExampleCRPatient.md)

**episodeOfCare**: [EpisodeOfCare: status = active; period = 2026-01-01 --> (ongoing)](EpisodeOfCare-ExampleCRRegistrationEpisode.md)

**period**: 2026-01-01 --> (ongoing)



## Resource Content

```json
{
  "resourceType" : "Encounter",
  "id" : "ExampleTumorEncounter",
  "meta" : {
    "profile" : ["https://dhis2.org/fhir/cancer-registry/StructureDefinition/cr-tumor-encounter"]
  },
  "extension" : [{
    "url" : "https://dhis2.org/fhir/cancer-registry/StructureDefinition/cr-rare",
    "valueBoolean" : false
  }],
  "status" : "finished",
  "class" : {
    "system" : "http://terminology.hl7.org/CodeSystem/v3-ActCode",
    "code" : "AMB",
    "display" : "ambulatory"
  },
  "type" : [{
    "coding" : [{
      "system" : "https://dhis2.org/fhir/cancer-registry/CodeSystem/cr-encounter-type",
      "code" : "tumor"
    }]
  }],
  "subject" : {
    "reference" : "Patient/ExampleCRPatient"
  },
  "episodeOfCare" : [{
    "reference" : "EpisodeOfCare/ExampleCRRegistrationEpisode"
  }],
  "period" : {
    "start" : "2026-01-01"
  }
}

```
