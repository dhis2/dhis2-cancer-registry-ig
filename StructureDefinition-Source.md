# Source - DHIS2 Cancer Registry Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Source**

## Logical Model: Source 

| | |
| :--- | :--- |
| *Official URL*:https://dhis2.org/fhir/cancer-registry/StructureDefinition/Source | *Version*:0.1.0 |
| Draft as of 2026-04-14 | *Computable Name*:Source |

 
Source stage of the DHIS2 Cancer Registry tracker program. This repeatable stage records the documentation sources from which a cancer case has been notified to the registry. Each source represents a piece of documentation, such as a hospital record, pathology report, or death certificate, that supports the registration of a specific tumor. Sources are linked to a specific tumor via the Tumor Number. 

**Usages:**

* Use this Logical Model: [Cancer Registry](StructureDefinition-CancerRegistry.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/dhis2.cancer.registry|current/StructureDefinition/Source)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-Source.csv), [Excel](StructureDefinition-Source.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "Source",
  "url" : "https://dhis2.org/fhir/cancer-registry/StructureDefinition/Source",
  "version" : "0.1.0",
  "name" : "Source",
  "title" : "Source",
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
  "description" : "Source stage of the DHIS2 Cancer Registry tracker program. This repeatable stage records the documentation sources from which a cancer case has been notified to the registry. Each source represents a piece of documentation, such as a hospital record, pathology report, or death certificate, that supports the registration of a specific tumor. Sources are linked to a specific tumor via the Tumor Number.",
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "source-to-source-encounter",
    "uri" : "https://dhis2.org/fhir/cancer-registry/StructureDefinition/cr-source-encounter",
    "name" : "Mapping: Source to CRSourceEncounter",
    "comment" : "Maps the DHIS2 Cancer Registry Source stage event to a CRSourceEncounter."
  },
  {
    "identity" : "source-to-source-type",
    "uri" : "https://dhis2.org/fhir/cancer-registry/StructureDefinition/cr-source-type-observation",
    "name" : "Mapping: Source crSourceType to Source Type Observation",
    "comment" : "Maps the CR - Source Type data element to a CRSourceTypeObservation."
  },
  {
    "identity" : "source-to-source-tumor-number",
    "uri" : "https://dhis2.org/fhir/cancer-registry/StructureDefinition/cr-source-tumor-number-observation",
    "name" : "Mapping: Source crSourceTumorNumber to Source Tumor Number Observation",
    "comment" : "Maps the CR - Source: Tumor number data element to a CRSourceTumorNumberObservation."
  }],
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://dhis2.org/fhir/cancer-registry/StructureDefinition/Source",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "Source",
      "path" : "Source",
      "short" : "Source",
      "definition" : "Source stage of the DHIS2 Cancer Registry tracker program. This repeatable stage records the documentation sources from which a cancer case has been notified to the registry. Each source represents a piece of documentation, such as a hospital record, pathology report, or death certificate, that supports the registration of a specific tumor. Sources are linked to a specific tumor via the Tumor Number."
    },
    {
      "id" : "Source.crSourceTumorNumber",
      "path" : "Source.crSourceTumorNumber",
      "code" : [{
        "system" : "https://dhis2.org/fhir/cancer-registry/CodeSystem/dhis2-data-elements-cs",
        "code" : "fID2of7Q8Jj"
      }],
      "short" : "CR - Source: Tumor number",
      "definition" : "CR - Source: Tumor number",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://dhis2.org/fhir/cancer-registry/ValueSet/CRTumorNumberVS"
      },
      "mapping" : [{
        "identity" : "source-to-source-tumor-number",
        "map" : "Observation.valueCodeableConcept"
      }]
    },
    {
      "id" : "Source.crSourceDate",
      "path" : "Source.crSourceDate",
      "code" : [{
        "system" : "https://dhis2.org/fhir/cancer-registry/CodeSystem/dhis2-data-elements-cs",
        "code" : "TgjO873BZTu"
      }],
      "short" : "CR - Source date",
      "definition" : "CR - Source date",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "date"
      }],
      "mapping" : [{
        "identity" : "source-to-source-encounter",
        "map" : "Encounter.period.start"
      }]
    },
    {
      "id" : "Source.crSourceType",
      "path" : "Source.crSourceType",
      "code" : [{
        "system" : "https://dhis2.org/fhir/cancer-registry/CodeSystem/dhis2-data-elements-cs",
        "code" : "Mqz5dPrwWho"
      }],
      "short" : "CR - Source Type",
      "definition" : "CR - Source Type",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://dhis2.org/fhir/cancer-registry/ValueSet/CRPlaceholderSourceTypeVS"
      },
      "mapping" : [{
        "identity" : "source-to-source-type",
        "map" : "Observation.valueCodeableConcept"
      }]
    },
    {
      "id" : "Source.crPatientId",
      "path" : "Source.crPatientId",
      "code" : [{
        "system" : "https://dhis2.org/fhir/cancer-registry/CodeSystem/dhis2-data-elements-cs",
        "code" : "EMoLghRDW4A"
      }],
      "short" : "CR - Patient ID",
      "definition" : "CR - Patient ID",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "Source.crTumouridsourcetable",
      "path" : "Source.crTumouridsourcetable",
      "code" : [{
        "system" : "https://dhis2.org/fhir/cancer-registry/CodeSystem/dhis2-data-elements-cs",
        "code" : "HxMFZcIIZpL"
      }],
      "short" : "CR - TUMOURIDSOURCETABLE",
      "definition" : "CR - TUMOURIDSOURCETABLE",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    }]
  }
}

```
