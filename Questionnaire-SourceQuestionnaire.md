# Source Questionnaire - DHIS2 Cancer Registry Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Source Questionnaire**

## Questionnaire: Source Questionnaire
Branch:



## Resource Content

```json
{
  "resourceType" : "Questionnaire",
  "id" : "SourceQuestionnaire",
  "contained" : [{
    "resourceType" : "ValueSet",
    "id" : "CRTumorNumberVS",
    "meta" : {
      "profile" : ["http://hl7.org/fhir/uv/crmi/StructureDefinition/crmi-shareablevalueset",
      "http://hl7.org/fhir/uv/crmi/StructureDefinition/crmi-publishablevalueset",
      "http://hl7.org/fhir/uv/crmi/StructureDefinition/crmi-computablevalueset"]
    },
    "url" : "https://dhis2.org/fhir/cancer-registry/ValueSet/CRTumorNumberVS",
    "version" : "1.0.0",
    "name" : "CRTumorNumberVS",
    "title" : "CR - Tumor number value set",
    "status" : "active",
    "experimental" : false,
    "description" : "Value set of tumor number identifiers. Combined with the Patient ID, the Tumor Number forms the Tumor ID composite identifier that uniquely identifies a tumor record within the system.",
    "compose" : {
      "include" : [{
        "system" : "https://dhis2.org/fhir/cancer-registry/CodeSystem/CRTumorNumberCS"
      }]
    }
  },
  {
    "resourceType" : "ValueSet",
    "id" : "CRPlaceholderSourceTypeVS",
    "meta" : {
      "profile" : ["http://hl7.org/fhir/uv/crmi/StructureDefinition/crmi-shareablevalueset",
      "http://hl7.org/fhir/uv/crmi/StructureDefinition/crmi-publishablevalueset",
      "http://hl7.org/fhir/uv/crmi/StructureDefinition/crmi-computablevalueset"]
    },
    "url" : "https://dhis2.org/fhir/cancer-registry/ValueSet/CRPlaceholderSourceTypeVS",
    "version" : "1.0.0",
    "name" : "CRPlaceholderSourceTypeVS",
    "title" : "CR - Placeholder: Source type value set",
    "status" : "active",
    "experimental" : false,
    "description" : "Value set of placeholder source type codes for the Source stage. These values must be customised prior to implementation to reflect local source types (e.g. hospital records, pathology reports, death certificates).",
    "compose" : {
      "include" : [{
        "system" : "https://dhis2.org/fhir/cancer-registry/CodeSystem/CRPlaceholderSourceTypeCS"
      }]
    }
  }],
  "url" : "https://dhis2.org/fhir/cancer-registry/Questionnaire/SourceQuestionnaire",
  "version" : "0.1.0",
  "title" : "Source Questionnaire",
  "status" : "draft",
  "experimental" : false,
  "date" : "2026-04-10T12:38:15+00:00",
  "publisher" : "DHIS2",
  "contact" : [{
    "name" : "DHIS2",
    "telecom" : [{
      "system" : "url",
      "value" : "http://dhis2.org"
    }]
  }],
  "description" : "Questionnaire for the Source stage of the DHIS2 Cancer Registry tracker program. Records the documentation sources from which a cancer case has been notified to the registry. Each source represents a piece of documentation (such as a hospital record, pathology report, or death certificate) linked to a specific tumor via the Tumor Number. Contains a visible Source section and a hidden TUMOURIDSOURCETABLE section used for CanReg5 data extraction.",
  "item" : [{
    "linkId" : "sourceGroup",
    "text" : "Source",
    "type" : "group",
    "item" : [{
      "linkId" : "crSourceTumorNumber",
      "text" : "Tumor number",
      "type" : "choice",
      "required" : true,
      "repeats" : false,
      "answerValueSet" : "#CRTumorNumberVS"
    },
    {
      "linkId" : "crSourceDate",
      "text" : "Source date",
      "type" : "date",
      "required" : false,
      "repeats" : false
    },
    {
      "linkId" : "crSourceType",
      "text" : "Source Type",
      "type" : "choice",
      "required" : false,
      "repeats" : false,
      "answerValueSet" : "#CRPlaceholderSourceTypeVS"
    }]
  },
  {
    "linkId" : "tumouridsourcetableGroup",
    "text" : "TUMOURIDSOURCETABLE",
    "type" : "group",
    "item" : [{
      "linkId" : "crPatientId",
      "text" : "Patient ID",
      "type" : "string",
      "required" : false,
      "repeats" : false
    },
    {
      "linkId" : "crTumouridsourcetable",
      "text" : "TUMOURIDSOURCETABLE",
      "type" : "string",
      "required" : false,
      "repeats" : false
    }]
  }]
}

```
