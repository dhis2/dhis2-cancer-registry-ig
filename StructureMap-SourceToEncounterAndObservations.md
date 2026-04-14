# Transform: Source Stage to Encounter + Observations - DHIS2 Cancer Registry Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Transform: Source Stage to Encounter + Observations**

## StructureMap: Transform: Source Stage to Encounter + Observations 

| | |
| :--- | :--- |
| *Official URL*:https://dhis2.org/fhir/cancer-registry/StructureMap/SourceToEncounterAndObservations | *Version*:0.1.0 |
| Draft as of 2026-04-14 | *Computable Name*:SourceToEncounterAndObservations |

 
Transform: Source Stage to CRSourceEncounter + Observations 



## Resource Content

```json
{
  "resourceType" : "StructureMap",
  "id" : "SourceToEncounterAndObservations",
  "url" : "https://dhis2.org/fhir/cancer-registry/StructureMap/SourceToEncounterAndObservations",
  "version" : "0.1.0",
  "name" : "SourceToEncounterAndObservations",
  "title" : "Transform: Source Stage to CRSourceEncounter + Observations",
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
  "description" : "Transform: Source Stage to CRSourceEncounter + Observations",
  "structure" : [{
    "url" : "https://dhis2.org/fhir/cancer-registry/StructureDefinition/Source",
    "mode" : "source",
    "alias" : "Source"
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/Bundle",
    "mode" : "target",
    "alias" : "Bundle"
  }],
  "group" : [{
    "name" : "SourceToBundle",
    "typeMode" : "none",
    "input" : [{
      "name" : "src",
      "type" : "Source",
      "mode" : "source"
    },
    {
      "name" : "tgt",
      "type" : "Bundle",
      "mode" : "target"
    }],
    "rule" : [{
      "name" : "setbundletype",
      "source" : [{
        "context" : "src"
      }],
      "target" : [{
        "context" : "tgt",
        "contextType" : "variable",
        "element" : "type",
        "transform" : "copy",
        "parameter" : [{
          "valueString" : "transaction"
        }]
      }]
    },
    {
      "name" : "createencounter",
      "source" : [{
        "context" : "src"
      }],
      "target" : [{
        "context" : "tgt",
        "contextType" : "variable",
        "element" : "entry",
        "variable" : "entry"
      },
      {
        "context" : "entry",
        "contextType" : "variable",
        "element" : "resource",
        "variable" : "enc",
        "transform" : "create",
        "parameter" : [{
          "valueString" : "Encounter"
        }]
      }],
      "rule" : [{
        "name" : "setencmeta",
        "source" : [{
          "context" : "src"
        }],
        "target" : [{
          "context" : "enc",
          "contextType" : "variable",
          "element" : "meta",
          "variable" : "meta"
        }],
        "rule" : [{
          "name" : "setencprofile",
          "source" : [{
            "context" : "src"
          }],
          "target" : [{
            "context" : "meta",
            "contextType" : "variable",
            "element" : "profile",
            "transform" : "copy",
            "parameter" : [{
              "valueString" : "https://dhis2.org/fhir/cancer-registry/StructureDefinition/cr-source-encounter"
            }]
          }]
        }]
      },
      {
        "name" : "setencstatus",
        "source" : [{
          "context" : "src"
        }],
        "target" : [{
          "context" : "enc",
          "contextType" : "variable",
          "element" : "status",
          "transform" : "copy",
          "parameter" : [{
            "valueString" : "finished"
          }]
        }]
      },
      {
        "name" : "setencclass",
        "source" : [{
          "context" : "src"
        }],
        "target" : [{
          "context" : "enc",
          "contextType" : "variable",
          "element" : "class",
          "variable" : "cls"
        }],
        "rule" : [{
          "name" : "setclssystem",
          "source" : [{
            "context" : "src"
          }],
          "target" : [{
            "context" : "cls",
            "contextType" : "variable",
            "element" : "system",
            "transform" : "copy",
            "parameter" : [{
              "valueString" : "http://terminology.hl7.org/CodeSystem/v3-ActCode"
            }]
          }]
        },
        {
          "name" : "setclscode",
          "source" : [{
            "context" : "src"
          }],
          "target" : [{
            "context" : "cls",
            "contextType" : "variable",
            "element" : "code",
            "transform" : "copy",
            "parameter" : [{
              "valueString" : "AMB"
            }]
          }]
        }]
      },
      {
        "name" : "setenctype",
        "source" : [{
          "context" : "src"
        }],
        "target" : [{
          "context" : "enc",
          "contextType" : "variable",
          "element" : "type",
          "variable" : "tp"
        }],
        "rule" : [{
          "name" : "settypecoding",
          "source" : [{
            "context" : "src"
          }],
          "target" : [{
            "context" : "tp",
            "contextType" : "variable",
            "element" : "coding",
            "variable" : "coding"
          }],
          "rule" : [{
            "name" : "settypesystem",
            "source" : [{
              "context" : "src"
            }],
            "target" : [{
              "context" : "coding",
              "contextType" : "variable",
              "element" : "system",
              "transform" : "copy",
              "parameter" : [{
                "valueString" : "https://dhis2.org/fhir/cancer-registry/CodeSystem/cr-encounter-type"
              }]
            }]
          },
          {
            "name" : "settypecode",
            "source" : [{
              "context" : "src"
            }],
            "target" : [{
              "context" : "coding",
              "contextType" : "variable",
              "element" : "code",
              "transform" : "copy",
              "parameter" : [{
                "valueString" : "source"
              }]
            }]
          }]
        }]
      },
      {
        "name" : "setencperiod",
        "source" : [{
          "context" : "src",
          "element" : "crSourceDate",
          "variable" : "dt"
        }],
        "target" : [{
          "context" : "enc",
          "contextType" : "variable",
          "element" : "period",
          "variable" : "p"
        },
        {
          "context" : "p",
          "contextType" : "variable",
          "element" : "start",
          "transform" : "copy",
          "parameter" : [{
            "valueId" : "dt"
          }]
        }]
      }]
    },
    {
      "name" : "createsourcetype",
      "source" : [{
        "context" : "src",
        "element" : "crSourceType",
        "variable" : "val"
      }],
      "target" : [{
        "context" : "tgt",
        "contextType" : "variable",
        "element" : "entry",
        "variable" : "entry"
      },
      {
        "context" : "entry",
        "contextType" : "variable",
        "element" : "resource",
        "variable" : "obs",
        "transform" : "create",
        "parameter" : [{
          "valueString" : "Observation"
        }]
      }],
      "rule" : [{
        "name" : "srctypestatus",
        "source" : [{
          "context" : "src"
        }],
        "target" : [{
          "context" : "obs",
          "contextType" : "variable",
          "element" : "status",
          "transform" : "copy",
          "parameter" : [{
            "valueString" : "final"
          }]
        }]
      },
      {
        "name" : "srctypecode",
        "source" : [{
          "context" : "src"
        }],
        "target" : [{
          "context" : "obs",
          "contextType" : "variable",
          "element" : "code",
          "variable" : "c"
        },
        {
          "context" : "c",
          "contextType" : "variable",
          "element" : "coding",
          "variable" : "cd"
        }],
        "rule" : [{
          "name" : "srctypecodesys",
          "source" : [{
            "context" : "src"
          }],
          "target" : [{
            "context" : "cd",
            "contextType" : "variable",
            "element" : "system",
            "transform" : "copy",
            "parameter" : [{
              "valueString" : "https://dhis2.org/fhir/cancer-registry/CodeSystem/cr-observation-codes"
            }]
          }]
        },
        {
          "name" : "srctypecodeval",
          "source" : [{
            "context" : "src"
          }],
          "target" : [{
            "context" : "cd",
            "contextType" : "variable",
            "element" : "code",
            "transform" : "copy",
            "parameter" : [{
              "valueString" : "source-type"
            }]
          }]
        }]
      },
      {
        "name" : "srctypevalue",
        "source" : [{
          "context" : "val"
        }],
        "target" : [{
          "context" : "obs",
          "contextType" : "variable",
          "element" : "value",
          "variable" : "cc",
          "transform" : "create",
          "parameter" : [{
            "valueString" : "CodeableConcept"
          }]
        },
        {
          "context" : "cc",
          "contextType" : "variable",
          "element" : "coding",
          "variable" : "cd"
        }],
        "rule" : [{
          "name" : "srctypevalsys",
          "source" : [{
            "context" : "val"
          }],
          "target" : [{
            "context" : "cd",
            "contextType" : "variable",
            "element" : "system",
            "transform" : "copy",
            "parameter" : [{
              "valueString" : "https://dhis2.org/fhir/cancer-registry/CodeSystem/CRPlaceholderSourceTypeCS"
            }]
          }]
        },
        {
          "name" : "srctypevalcode",
          "source" : [{
            "context" : "val"
          }],
          "target" : [{
            "context" : "cd",
            "contextType" : "variable",
            "element" : "code",
            "transform" : "copy",
            "parameter" : [{
              "valueId" : "val"
            }]
          }]
        }]
      }]
    },
    {
      "name" : "createsourcetumornumber",
      "source" : [{
        "context" : "src",
        "element" : "crSourceTumorNumber",
        "variable" : "val"
      }],
      "target" : [{
        "context" : "tgt",
        "contextType" : "variable",
        "element" : "entry",
        "variable" : "entry"
      },
      {
        "context" : "entry",
        "contextType" : "variable",
        "element" : "resource",
        "variable" : "obs",
        "transform" : "create",
        "parameter" : [{
          "valueString" : "Observation"
        }]
      }],
      "rule" : [{
        "name" : "srctnstatus",
        "source" : [{
          "context" : "src"
        }],
        "target" : [{
          "context" : "obs",
          "contextType" : "variable",
          "element" : "status",
          "transform" : "copy",
          "parameter" : [{
            "valueString" : "final"
          }]
        }]
      },
      {
        "name" : "srctncode",
        "source" : [{
          "context" : "src"
        }],
        "target" : [{
          "context" : "obs",
          "contextType" : "variable",
          "element" : "code",
          "variable" : "c"
        },
        {
          "context" : "c",
          "contextType" : "variable",
          "element" : "coding",
          "variable" : "cd"
        }],
        "rule" : [{
          "name" : "srctncodesys",
          "source" : [{
            "context" : "src"
          }],
          "target" : [{
            "context" : "cd",
            "contextType" : "variable",
            "element" : "system",
            "transform" : "copy",
            "parameter" : [{
              "valueString" : "https://dhis2.org/fhir/cancer-registry/CodeSystem/cr-observation-codes"
            }]
          }]
        },
        {
          "name" : "srctncodeval",
          "source" : [{
            "context" : "src"
          }],
          "target" : [{
            "context" : "cd",
            "contextType" : "variable",
            "element" : "code",
            "transform" : "copy",
            "parameter" : [{
              "valueString" : "source-tumor-number"
            }]
          }]
        }]
      },
      {
        "name" : "srctnvalue",
        "source" : [{
          "context" : "val"
        }],
        "target" : [{
          "context" : "obs",
          "contextType" : "variable",
          "element" : "value",
          "variable" : "cc",
          "transform" : "create",
          "parameter" : [{
            "valueString" : "CodeableConcept"
          }]
        },
        {
          "context" : "cc",
          "contextType" : "variable",
          "element" : "coding",
          "variable" : "cd"
        }],
        "rule" : [{
          "name" : "srctnvalsys",
          "source" : [{
            "context" : "val"
          }],
          "target" : [{
            "context" : "cd",
            "contextType" : "variable",
            "element" : "system",
            "transform" : "copy",
            "parameter" : [{
              "valueString" : "https://dhis2.org/fhir/cancer-registry/CodeSystem/CRTumorNumberCS"
            }]
          }]
        },
        {
          "name" : "srctnvalcode",
          "source" : [{
            "context" : "val"
          }],
          "target" : [{
            "context" : "cd",
            "contextType" : "variable",
            "element" : "code",
            "transform" : "copy",
            "parameter" : [{
              "valueId" : "val"
            }]
          }]
        }]
      }]
    }]
  }]
}

```
