# Transform: Cancer Registry Enrollment to EpisodeOfCare - DHIS2 Cancer Registry Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Transform: Cancer Registry Enrollment to EpisodeOfCare**

## StructureMap: Transform: Cancer Registry Enrollment to EpisodeOfCare 

| | |
| :--- | :--- |
| *Official URL*:https://dhis2.org/fhir/cancer-registry/StructureMap/CancerRegistryToEpisode | *Version*:0.1.0 |
| Draft as of 2026-04-14 | *Computable Name*:CancerRegistryToEpisode |

 
Transform: Cancer Registry Enrollment to EpisodeOfCare 



## Resource Content

```json
{
  "resourceType" : "StructureMap",
  "id" : "CancerRegistryToEpisode",
  "url" : "https://dhis2.org/fhir/cancer-registry/StructureMap/CancerRegistryToEpisode",
  "version" : "0.1.0",
  "name" : "CancerRegistryToEpisode",
  "title" : "Transform: Cancer Registry Enrollment to EpisodeOfCare",
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
  "description" : "Transform: Cancer Registry Enrollment to EpisodeOfCare",
  "structure" : [{
    "url" : "https://dhis2.org/fhir/cancer-registry/StructureDefinition/CancerRegistry",
    "mode" : "source",
    "alias" : "CancerRegistry"
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/EpisodeOfCare",
    "mode" : "target",
    "alias" : "EpisodeOfCare"
  }],
  "group" : [{
    "name" : "CancerRegistryToEpisode",
    "typeMode" : "none",
    "input" : [{
      "name" : "src",
      "type" : "CancerRegistry",
      "mode" : "source"
    },
    {
      "name" : "tgt",
      "type" : "EpisodeOfCare",
      "mode" : "target"
    }],
    "rule" : [{
      "name" : "setmeta",
      "source" : [{
        "context" : "src"
      }],
      "target" : [{
        "context" : "tgt",
        "contextType" : "variable",
        "element" : "meta",
        "variable" : "meta"
      }],
      "rule" : [{
        "name" : "setprofile",
        "source" : [{
          "context" : "src"
        }],
        "target" : [{
          "context" : "meta",
          "contextType" : "variable",
          "element" : "profile",
          "transform" : "copy",
          "parameter" : [{
            "valueString" : "https://dhis2.org/fhir/cancer-registry/StructureDefinition/cr-cancer-registration-episode"
          }]
        }]
      }]
    },
    {
      "name" : "setstatus",
      "source" : [{
        "context" : "src"
      }],
      "target" : [{
        "context" : "tgt",
        "contextType" : "variable",
        "element" : "status",
        "transform" : "copy",
        "parameter" : [{
          "valueString" : "active"
        }]
      }]
    }]
  }]
}

```
