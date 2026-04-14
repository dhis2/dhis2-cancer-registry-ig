# Cancer Registry - DHIS2 Cancer Registry Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Cancer Registry**

## Logical Model: Cancer Registry 

| | |
| :--- | :--- |
| *Official URL*:https://dhis2.org/fhir/cancer-registry/StructureDefinition/CancerRegistry | *Version*:0.1.0 |
| Draft as of 2026-04-14 | *Computable Name*:CancerRegistry |

 
Enrollment of the DHIS2 Cancer Registry tracker program. Captures core patient demographic information required to register an individual in the cancer registry, aligned with the IARC standard data requirements for population-based cancer registration. The tracked entity type is 'Person'. The Patient ID is automatically generated at enrollment using the pattern CURRENT_DATE(yyyy)+SEQUENTIAL(####), following the CanReg5 convention. 

**Usages:**

* This Logical Model is not used by any profiles in this Implementation Guide

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/dhis2.cancer.registry|current/StructureDefinition/CancerRegistry)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-CancerRegistry.csv), [Excel](StructureDefinition-CancerRegistry.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "CancerRegistry",
  "url" : "https://dhis2.org/fhir/cancer-registry/StructureDefinition/CancerRegistry",
  "version" : "0.1.0",
  "name" : "CancerRegistry",
  "title" : "Cancer Registry",
  "status" : "draft",
  "date" : "2026-04-14T07:58:39+00:00",
  "publisher" : "DHIS2",
  "contact" : [{
    "name" : "DHIS2",
    "telecom" : [{
      "system" : "url",
      "value" : "http://dhis2.org"
    }]
  }],
  "description" : "Enrollment of the DHIS2 Cancer Registry tracker program. Captures core patient demographic information required to register an individual in the cancer registry, aligned with the IARC standard data requirements for population-based cancer registration. The tracked entity type is 'Person'. The Patient ID is automatically generated at enrollment using the pattern CURRENT_DATE(yyyy)+SEQUENTIAL(####), following the CanReg5 convention.",
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "cancer-registry-to-cr-patient",
    "uri" : "https://dhis2.org/fhir/cancer-registry/StructureDefinition/cr-patient",
    "name" : "Mapping: Cancer Registry → Patient",
    "comment" : "Maps the DHIS2 Cancer Registry enrollment tracked-entity attributes to the Patient FHIR profile."
  },
  {
    "identity" : "cancer-registry-to-episode",
    "uri" : "https://dhis2.org/fhir/cancer-registry/StructureDefinition/cr-cancer-registration-episode",
    "name" : "Mapping: Cancer Registry → EpisodeOfCare",
    "comment" : "Maps the DHIS2 Cancer Registry enrollment to a CRCancerRegistrationEpisode that groups all stage encounters."
  }],
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://dhis2.org/fhir/cancer-registry/StructureDefinition/CancerRegistry",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "CancerRegistry",
      "path" : "CancerRegistry",
      "short" : "Cancer Registry",
      "definition" : "Enrollment of the DHIS2 Cancer Registry tracker program. Captures core patient demographic information required to register an individual in the cancer registry, aligned with the IARC standard data requirements for population-based cancer registration. The tracked entity type is 'Person'. The Patient ID is automatically generated at enrollment using the pattern CURRENT_DATE(yyyy)+SEQUENTIAL(####), following the CanReg5 convention."
    },
    {
      "id" : "CancerRegistry.crPatientId",
      "path" : "CancerRegistry.crPatientId",
      "code" : [{
        "system" : "https://dhis2.org/fhir/cancer-registry/CodeSystem/dhis2-tracked-entity-attributes-cs",
        "code" : "hDEhIMZe07x"
      }],
      "short" : "CR - Patient ID",
      "definition" : "CR - Patient ID",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "cancer-registry-to-cr-patient",
        "map" : "Patient.identifier.where(type.coding.code='MR').value"
      },
      {
        "identity" : "cancer-registry-to-episode",
        "map" : "EpisodeOfCare.patient",
        "comment" : "Reference to the CRPatient"
      }]
    },
    {
      "id" : "CancerRegistry.familyName",
      "path" : "CancerRegistry.familyName",
      "code" : [{
        "system" : "https://dhis2.org/fhir/cancer-registry/CodeSystem/dhis2-tracked-entity-attributes-cs",
        "code" : "nJsmdQXRoze"
      }],
      "short" : "Family name or last name of the person or case.",
      "definition" : "Family name or last name of the person or case.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "cancer-registry-to-cr-patient",
        "map" : "Patient.name.family"
      }]
    },
    {
      "id" : "CancerRegistry.givenName",
      "path" : "CancerRegistry.givenName",
      "code" : [{
        "system" : "https://dhis2.org/fhir/cancer-registry/CodeSystem/dhis2-tracked-entity-attributes-cs",
        "code" : "sB1IHYu2xQT"
      }],
      "short" : "Given name or first name of the person or case.",
      "definition" : "Given name or first name of the person or case.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "cancer-registry-to-cr-patient",
        "map" : "Patient.name.given"
      }]
    },
    {
      "id" : "CancerRegistry.crSex",
      "path" : "CancerRegistry.crSex",
      "code" : [{
        "system" : "https://dhis2.org/fhir/cancer-registry/CodeSystem/dhis2-tracked-entity-attributes-cs",
        "code" : "m7GEZG8cyCO"
      }],
      "short" : "CR - Sex",
      "definition" : "CR - Sex",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://dhis2.org/fhir/cancer-registry/ValueSet/CRSexVS"
      },
      "mapping" : [{
        "identity" : "cancer-registry-to-cr-patient",
        "map" : "Patient.gender",
        "comment" : "Sex codes: 1=male, 2=female, 9=unknown → FHIR: male, female, unknown"
      }]
    },
    {
      "id" : "CancerRegistry.dateOfBirth",
      "path" : "CancerRegistry.dateOfBirth",
      "code" : [{
        "system" : "https://dhis2.org/fhir/cancer-registry/CodeSystem/dhis2-tracked-entity-attributes-cs",
        "code" : "NI0QRzJvQ0k"
      }],
      "short" : "Date of birth. This field can also be used when the date of birth is estimated, in conjunction with another attribute that indicates whether the birth date is estimated.",
      "definition" : "Date of birth. This field can also be used when the date of birth is estimated, in conjunction with another attribute that indicates whether the birth date is estimated.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "date"
      }],
      "mapping" : [{
        "identity" : "cancer-registry-to-cr-patient",
        "map" : "Patient.birthDate"
      }]
    },
    {
      "id" : "CancerRegistry.tumor",
      "path" : "CancerRegistry.tumor",
      "short" : "Tumor",
      "definition" : "Tumor",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "https://dhis2.org/fhir/cancer-registry/StructureDefinition/Tumor"
      }],
      "mapping" : [{
        "identity" : "cancer-registry-to-episode",
        "map" : "EpisodeOfCare.diagnosis",
        "comment" : "Each tumor stage event → a CRTumorEncounter linked via episodeOfCare"
      }]
    },
    {
      "id" : "CancerRegistry.source",
      "path" : "CancerRegistry.source",
      "short" : "Source",
      "definition" : "Source",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "https://dhis2.org/fhir/cancer-registry/StructureDefinition/Source"
      }],
      "mapping" : [{
        "identity" : "cancer-registry-to-episode",
        "map" : "EpisodeOfCare",
        "comment" : "Each source event → a CRSourceEncounter linked via episodeOfCare"
      }]
    },
    {
      "id" : "CancerRegistry.followUp",
      "path" : "CancerRegistry.followUp",
      "short" : "Follow up",
      "definition" : "Follow up",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "https://dhis2.org/fhir/cancer-registry/StructureDefinition/FollowUp"
      }],
      "mapping" : [{
        "identity" : "cancer-registry-to-episode",
        "map" : "EpisodeOfCare",
        "comment" : "Each follow-up event → a CRFollowUpEncounter linked via episodeOfCare"
      }]
    }]
  }
}

```
