# Follow up - DHIS2 Cancer Registry Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Follow up**

## Logical Model: Follow up 

| | |
| :--- | :--- |
| *Official URL*:https://dhis2.org/fhir/cancer-registry/StructureDefinition/FollowUp | *Version*:0.1.0 |
| Draft as of 2026-04-14 | *Computable Name*:FollowUp |

 
Follow-up stage of the DHIS2 Cancer Registry tracker program. This repeatable stage records the follow-up status of the registered patient over time, capturing the date of last contact, the vital status, and, in cases where the status is death, the date of death. This stage is not associated with a specific tumor or source. 

**Usages:**

* Use this Logical Model: [Cancer Registry](StructureDefinition-CancerRegistry.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/dhis2.cancer.registry|current/StructureDefinition/FollowUp)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-FollowUp.csv), [Excel](StructureDefinition-FollowUp.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "FollowUp",
  "url" : "https://dhis2.org/fhir/cancer-registry/StructureDefinition/FollowUp",
  "version" : "0.1.0",
  "name" : "FollowUp",
  "title" : "Follow up",
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
  "description" : "Follow-up stage of the DHIS2 Cancer Registry tracker program. This repeatable stage records the follow-up status of the registered patient over time, capturing the date of last contact, the vital status, and, in cases where the status is death, the date of death. This stage is not associated with a specific tumor or source.",
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "followup-to-followup-encounter",
    "uri" : "https://dhis2.org/fhir/cancer-registry/StructureDefinition/cr-followup-encounter",
    "name" : "Mapping: Follow-up to CRFollowUpEncounter",
    "comment" : "Maps the DHIS2 Cancer Registry Follow-up stage event to a CRFollowUpEncounter."
  },
  {
    "identity" : "followup-to-vital-status",
    "uri" : "https://dhis2.org/fhir/cancer-registry/StructureDefinition/cr-vital-status-observation",
    "name" : "Mapping: Follow-up crStatus to Vital Status Observation",
    "comment" : "Maps the CR - Status data element to a CRVitalStatusObservation."
  },
  {
    "identity" : "followup-to-date-of-death",
    "uri" : "https://dhis2.org/fhir/cancer-registry/StructureDefinition/cr-date-of-death-observation",
    "name" : "Mapping: Follow-up crDateOfDeath to Date of Death Observation",
    "comment" : "Maps the CR - Date of death data element to a CRDateOfDeathObservation."
  }],
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://dhis2.org/fhir/cancer-registry/StructureDefinition/FollowUp",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "FollowUp",
      "path" : "FollowUp",
      "short" : "Follow up",
      "definition" : "Follow-up stage of the DHIS2 Cancer Registry tracker program. This repeatable stage records the follow-up status of the registered patient over time, capturing the date of last contact, the vital status, and, in cases where the status is death, the date of death. This stage is not associated with a specific tumor or source."
    },
    {
      "id" : "FollowUp.crDateLastContact",
      "path" : "FollowUp.crDateLastContact",
      "code" : [{
        "system" : "https://dhis2.org/fhir/cancer-registry/CodeSystem/dhis2-data-elements-cs",
        "code" : "Ks2WWWWCuzq"
      }],
      "short" : "CR - Date last contact",
      "definition" : "CR - Date last contact",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "date"
      }],
      "mapping" : [{
        "identity" : "followup-to-followup-encounter",
        "map" : "Encounter.period.start",
        "comment" : "Date of last contact becomes the encounter date"
      },
      {
        "identity" : "followup-to-vital-status",
        "map" : "Observation.effectiveDateTime",
        "comment" : "Date of last contact used as observation effective date"
      }]
    },
    {
      "id" : "FollowUp.crStatus",
      "path" : "FollowUp.crStatus",
      "code" : [{
        "system" : "https://dhis2.org/fhir/cancer-registry/CodeSystem/dhis2-data-elements-cs",
        "code" : "nMpcjKFF5zt"
      }],
      "short" : "CR - Status",
      "definition" : "CR - Status",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://dhis2.org/fhir/cancer-registry/ValueSet/CRVitalStatusVS"
      },
      "mapping" : [{
        "identity" : "followup-to-vital-status",
        "map" : "Observation.valueCodeableConcept"
      }]
    },
    {
      "id" : "FollowUp.crDateOfDeath",
      "path" : "FollowUp.crDateOfDeath",
      "code" : [{
        "system" : "https://dhis2.org/fhir/cancer-registry/CodeSystem/dhis2-data-elements-cs",
        "code" : "hCJqPZcw2n6"
      }],
      "short" : "CR - Date of death",
      "definition" : "CR - Date of death",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "date"
      }],
      "mapping" : [{
        "identity" : "followup-to-date-of-death",
        "map" : "Observation.valueDateTime"
      }]
    }]
  }
}

```
