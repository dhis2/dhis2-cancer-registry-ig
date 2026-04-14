# Follow up Questionnaire - DHIS2 Cancer Registry Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Follow up Questionnaire**

## Questionnaire: Follow up Questionnaire
Branch:



## Resource Content

```json
{
  "resourceType" : "Questionnaire",
  "id" : "FollowUpQuestionnaire",
  "contained" : [{
    "resourceType" : "ValueSet",
    "id" : "CRVitalStatusVS",
    "meta" : {
      "profile" : ["http://hl7.org/fhir/uv/crmi/StructureDefinition/crmi-shareablevalueset",
      "http://hl7.org/fhir/uv/crmi/StructureDefinition/crmi-publishablevalueset",
      "http://hl7.org/fhir/uv/crmi/StructureDefinition/crmi-computablevalueset"]
    },
    "url" : "https://dhis2.org/fhir/cancer-registry/ValueSet/CRVitalStatusVS",
    "version" : "1.0.0",
    "name" : "CRVitalStatusVS",
    "title" : "CR - Vital status value set",
    "status" : "active",
    "experimental" : false,
    "description" : "Value set of vital status codes used in the Follow-up stage to record the current status of the registered patient.",
    "compose" : {
      "include" : [{
        "system" : "https://dhis2.org/fhir/cancer-registry/CodeSystem/CRVitalStatusCS"
      }]
    }
  }],
  "url" : "https://dhis2.org/fhir/cancer-registry/Questionnaire/FollowUpQuestionnaire",
  "version" : "0.1.0",
  "title" : "Follow up Questionnaire",
  "status" : "draft",
  "experimental" : false,
  "date" : "2026-04-14T07:58:39+00:00",
  "publisher" : "DHIS2",
  "contact" : [{
    "name" : "DHIS2",
    "telecom" : [{
      "system" : "url",
      "value" : "http://dhis2.org"
    }]
  }],
  "description" : "Questionnaire for the Follow-up stage of the DHIS2 Cancer Registry tracker program. Records the follow-up status of registered patients over time, capturing the date of last contact, vital status, and date of death when applicable. This stage is not associated with a specific tumor or source.",
  "item" : [{
    "linkId" : "crDateLastContact",
    "text" : "Date last contact",
    "type" : "date",
    "required" : false,
    "repeats" : false
  },
  {
    "linkId" : "crStatus",
    "text" : "Status",
    "type" : "choice",
    "required" : false,
    "repeats" : false,
    "answerValueSet" : "#CRVitalStatusVS"
  },
  {
    "linkId" : "crDateOfDeath",
    "text" : "Date of death",
    "type" : "date",
    "required" : false,
    "repeats" : false
  }]
}

```
