# Example Follow-up Encounter - DHIS2 Cancer Registry Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Example Follow-up Encounter**

## Example Encounter: Example Follow-up Encounter

Profile: [Follow-up Encounter](StructureDefinition-cr-followup-encounter.md)

**status**: Finished

**class**: [ActCode: AMB](http://terminology.hl7.org/7.1.0/CodeSystem-v3-ActCode.html#v3-ActCode-AMB) (ambulatory)

**type**: Follow-up Contact

**subject**: [Jane Doe Female, DoB: 1970-03-15 ( Medical record number)](Patient-ExampleCRPatient.md)

**episodeOfCare**: [EpisodeOfCare: status = active; period = 2026-01-01 --> (ongoing)](EpisodeOfCare-ExampleCRRegistrationEpisode.md)

**period**: 2026-01-01 --> (ongoing)



## Resource Content

```json
{
  "resourceType" : "Encounter",
  "id" : "ExampleFollowUpEncounter",
  "meta" : {
    "profile" : ["https://dhis2.org/fhir/cancer-registry/StructureDefinition/cr-followup-encounter"]
  },
  "status" : "finished",
  "class" : {
    "system" : "http://terminology.hl7.org/CodeSystem/v3-ActCode",
    "code" : "AMB",
    "display" : "ambulatory"
  },
  "type" : [{
    "coding" : [{
      "system" : "https://dhis2.org/fhir/cancer-registry/CodeSystem/cr-encounter-type",
      "code" : "follow-up"
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
