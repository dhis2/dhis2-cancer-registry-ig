# Transform: Follow-up Stage to Encounter + Observations - DHIS2 Cancer Registry Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Transform: Follow-up Stage to Encounter + Observations**

## StructureMap: Transform: Follow-up Stage to Encounter + Observations 

| | |
| :--- | :--- |
| *Official URL*:https://dhis2.org/fhir/cancer-registry/StructureMap/FollowUpToEncounterAndObservations | *Version*:0.1.0 |
| Draft as of 2026-04-14 | *Computable Name*:FollowUpToEncounterAndObservations |

 
Transform: Follow-up Stage to CRFollowUpEncounter + Observations 



## Resource Content

```json
{
  "resourceType" : "StructureMap",
  "id" : "FollowUpToEncounterAndObservations",
  "url" : "https://dhis2.org/fhir/cancer-registry/StructureMap/FollowUpToEncounterAndObservations",
  "version" : "0.1.0",
  "name" : "FollowUpToEncounterAndObservations",
  "title" : "Transform: Follow-up Stage to CRFollowUpEncounter + Observations",
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
  "description" : "Transform: Follow-up Stage to CRFollowUpEncounter + Observations",
  "structure" : [{
    "url" : "https://dhis2.org/fhir/cancer-registry/StructureDefinition/FollowUp",
    "mode" : "source",
    "alias" : "FollowUp"
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/Bundle",
    "mode" : "target",
    "alias" : "Bundle"
  }],
  "group" : [{
    "name" : "FollowUpToBundle",
    "typeMode" : "none",
    "input" : [{
      "name" : "src",
      "type" : "FollowUp",
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
              "valueString" : "https://dhis2.org/fhir/cancer-registry/StructureDefinition/cr-followup-encounter"
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
                "valueString" : "follow-up"
              }]
            }]
          }]
        }]
      },
      {
        "name" : "setencperiod",
        "source" : [{
          "context" : "src",
          "element" : "crDateLastContact",
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
      "name" : "createvitalstatus",
      "source" : [{
        "context" : "src",
        "element" : "crStatus",
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
        "name" : "vsstatus",
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
        "name" : "vscode",
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
          "name" : "vscodesys",
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
          "name" : "vscodeval",
          "source" : [{
            "context" : "src"
          }],
          "target" : [{
            "context" : "cd",
            "contextType" : "variable",
            "element" : "code",
            "transform" : "copy",
            "parameter" : [{
              "valueString" : "vital-status"
            }]
          }]
        }]
      },
      {
        "name" : "vsvalue",
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
          "name" : "vsvalsys",
          "source" : [{
            "context" : "val"
          }],
          "target" : [{
            "context" : "cd",
            "contextType" : "variable",
            "element" : "system",
            "transform" : "copy",
            "parameter" : [{
              "valueString" : "https://dhis2.org/fhir/cancer-registry/CodeSystem/CRVitalStatusCS"
            }]
          }]
        },
        {
          "name" : "vsvalcode",
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
      },
      {
        "name" : "vseffective",
        "source" : [{
          "context" : "src",
          "element" : "crDateLastContact",
          "variable" : "dt"
        }],
        "target" : [{
          "context" : "obs",
          "contextType" : "variable",
          "element" : "effective",
          "variable" : "eff",
          "transform" : "create",
          "parameter" : [{
            "valueString" : "dateTime"
          }]
        },
        {
          "context" : "eff",
          "contextType" : "variable",
          "element" : "value",
          "transform" : "copy",
          "parameter" : [{
            "valueId" : "dt"
          }]
        }]
      }]
    },
    {
      "name" : "createdateofdeath",
      "source" : [{
        "context" : "src",
        "element" : "crDateOfDeath",
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
        "name" : "dodstatus",
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
        "name" : "dodcode",
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
          "name" : "dodcodesys",
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
          "name" : "dodcodeval",
          "source" : [{
            "context" : "src"
          }],
          "target" : [{
            "context" : "cd",
            "contextType" : "variable",
            "element" : "code",
            "transform" : "copy",
            "parameter" : [{
              "valueString" : "date-of-death"
            }]
          }]
        }]
      },
      {
        "name" : "dodvalue",
        "source" : [{
          "context" : "val"
        }],
        "target" : [{
          "context" : "obs",
          "contextType" : "variable",
          "element" : "value",
          "variable" : "dt",
          "transform" : "create",
          "parameter" : [{
            "valueString" : "dateTime"
          }]
        },
        {
          "context" : "dt",
          "contextType" : "variable",
          "element" : "value",
          "transform" : "copy",
          "parameter" : [{
            "valueId" : "val"
          }]
        }]
      }]
    }]
  }]
}

```
