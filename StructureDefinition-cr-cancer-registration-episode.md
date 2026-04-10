# Cancer Registration EpisodeOfCare - DHIS2 Cancer Registry Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Cancer Registration EpisodeOfCare**

## Resource Profile: Cancer Registration EpisodeOfCare 

| | |
| :--- | :--- |
| *Official URL*:https://dhis2.org/fhir/cancer-registry/StructureDefinition/cr-cancer-registration-episode | *Version*:0.1.0 |
| Draft as of 2026-04-10 | *Computable Name*:CRCancerRegistrationEpisode |

 
Episode of Care representing the overall enrollment of a patient in the cancer registry. Corresponds to the DHIS2 Cancer Registry tracker program enrollment. All stage-level Encounters (Tumor, Source, Follow-up) reference this episode. 

**Usages:**

* Refer to this Profile: [Follow-up Encounter](StructureDefinition-cr-followup-encounter.md), [Source Notification Encounter](StructureDefinition-cr-source-encounter.md) and [Tumor Registration Encounter](StructureDefinition-cr-tumor-encounter.md)
* Examples for this Profile: [EpisodeOfCare/ExampleCRRegistrationEpisode](EpisodeOfCare-ExampleCRRegistrationEpisode.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/dhis2.cancer.registry|current/StructureDefinition/cr-cancer-registration-episode)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-cr-cancer-registration-episode.csv), [Excel](StructureDefinition-cr-cancer-registration-episode.xlsx), [Schematron](StructureDefinition-cr-cancer-registration-episode.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "cr-cancer-registration-episode",
  "url" : "https://dhis2.org/fhir/cancer-registry/StructureDefinition/cr-cancer-registration-episode",
  "version" : "0.1.0",
  "name" : "CRCancerRegistrationEpisode",
  "title" : "Cancer Registration EpisodeOfCare",
  "status" : "draft",
  "date" : "2026-04-10T12:38:15+00:00",
  "publisher" : "DHIS2",
  "contact" : [{
    "name" : "DHIS2",
    "telecom" : [{
      "system" : "url",
      "value" : "http://dhis2.org"
    }]
  }],
  "description" : "Episode of Care representing the overall enrollment of a patient in the cancer registry. Corresponds to the DHIS2 Cancer Registry tracker program enrollment. All stage-level Encounters (Tumor, Source, Follow-up) reference this episode.",
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "workflow",
    "uri" : "http://hl7.org/fhir/workflow",
    "name" : "Workflow Pattern"
  },
  {
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
  },
  {
    "identity" : "w5",
    "uri" : "http://hl7.org/fhir/fivews",
    "name" : "FiveWs Pattern Mapping"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "EpisodeOfCare",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/EpisodeOfCare",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "EpisodeOfCare",
      "path" : "EpisodeOfCare"
    },
    {
      "id" : "EpisodeOfCare.status",
      "path" : "EpisodeOfCare.status",
      "mustSupport" : true
    },
    {
      "id" : "EpisodeOfCare.patient",
      "path" : "EpisodeOfCare.patient",
      "short" : "The registered cancer patient",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://dhis2.org/fhir/cancer-registry/StructureDefinition/cr-patient"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "EpisodeOfCare.period",
      "path" : "EpisodeOfCare.period",
      "short" : "Enrollment period in the cancer registry",
      "mustSupport" : true
    },
    {
      "id" : "EpisodeOfCare.period.start",
      "path" : "EpisodeOfCare.period.start",
      "short" : "Date of enrollment (registration date)",
      "min" : 1,
      "mustSupport" : true
    }]
  }
}

```
