# Transform: Tumor Stage to Encounter + Observations - DHIS2 Cancer Registry Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Transform: Tumor Stage to Encounter + Observations**

## StructureMap: Transform: Tumor Stage to Encounter + Observations 

| | |
| :--- | :--- |
| *Official URL*:https://dhis2.org/fhir/cancer-registry/StructureMap/TumorToEncounterAndObservations | *Version*:0.1.0 |
| Draft as of 2026-04-14 | *Computable Name*:TumorToEncounterAndObservations |

 
Transform: Tumor Stage to CRTumorEncounter + Observations 



## Resource Content

```json
{
  "resourceType" : "StructureMap",
  "id" : "TumorToEncounterAndObservations",
  "url" : "https://dhis2.org/fhir/cancer-registry/StructureMap/TumorToEncounterAndObservations",
  "version" : "0.1.0",
  "name" : "TumorToEncounterAndObservations",
  "title" : "Transform: Tumor Stage to CRTumorEncounter + Observations",
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
  "description" : "Transform: Tumor Stage to CRTumorEncounter + Observations",
  "structure" : [{
    "url" : "https://dhis2.org/fhir/cancer-registry/StructureDefinition/Tumor",
    "mode" : "source",
    "alias" : "Tumor"
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/Bundle",
    "mode" : "target",
    "alias" : "Bundle"
  }],
  "group" : [{
    "name" : "TumorToBundle",
    "typeMode" : "none",
    "input" : [{
      "name" : "src",
      "type" : "Tumor",
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
              "valueString" : "https://dhis2.org/fhir/cancer-registry/StructureDefinition/cr-tumor-encounter"
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
                "valueString" : "tumor"
              }]
            }]
          }]
        }]
      },
      {
        "name" : "setencperiod",
        "source" : [{
          "context" : "src",
          "element" : "crIncidenceDate",
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
      "name" : "createtopography",
      "source" : [{
        "context" : "src",
        "element" : "crTopography",
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
        "name" : "topostatus",
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
        "name" : "topocode",
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
          "name" : "topocodesys",
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
          "name" : "topocodeval",
          "source" : [{
            "context" : "src"
          }],
          "target" : [{
            "context" : "cd",
            "contextType" : "variable",
            "element" : "code",
            "transform" : "copy",
            "parameter" : [{
              "valueString" : "topography"
            }]
          }]
        }]
      },
      {
        "name" : "topovalue",
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
          "name" : "topovalsys",
          "source" : [{
            "context" : "val"
          }],
          "target" : [{
            "context" : "cd",
            "contextType" : "variable",
            "element" : "system",
            "transform" : "copy",
            "parameter" : [{
              "valueString" : "https://dhis2.org/fhir/cancer-registry/CodeSystem/CRTopographyCS"
            }]
          }]
        },
        {
          "name" : "topovalcode",
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
      "name" : "createmorphology",
      "source" : [{
        "context" : "src",
        "element" : "crMorphology",
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
        "name" : "morphstatus",
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
        "name" : "morphcode",
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
          "name" : "morphcodesys",
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
          "name" : "morphcodeval",
          "source" : [{
            "context" : "src"
          }],
          "target" : [{
            "context" : "cd",
            "contextType" : "variable",
            "element" : "code",
            "transform" : "copy",
            "parameter" : [{
              "valueString" : "morphology"
            }]
          }]
        }]
      },
      {
        "name" : "morphvalue",
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
          "name" : "morphvalsys",
          "source" : [{
            "context" : "val"
          }],
          "target" : [{
            "context" : "cd",
            "contextType" : "variable",
            "element" : "system",
            "transform" : "copy",
            "parameter" : [{
              "valueString" : "https://dhis2.org/fhir/cancer-registry/CodeSystem/CRMorphology4CS"
            }]
          }]
        },
        {
          "name" : "morphvalcode",
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
      "name" : "createbehaviour",
      "source" : [{
        "context" : "src",
        "element" : "crBehaviour",
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
        "name" : "behavstatus",
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
        "name" : "behavcode",
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
          "name" : "behavcodesys",
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
          "name" : "behavcodeval",
          "source" : [{
            "context" : "src"
          }],
          "target" : [{
            "context" : "cd",
            "contextType" : "variable",
            "element" : "code",
            "transform" : "copy",
            "parameter" : [{
              "valueString" : "behaviour"
            }]
          }]
        }]
      },
      {
        "name" : "behavvalue",
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
          "name" : "behavvalsys",
          "source" : [{
            "context" : "val"
          }],
          "target" : [{
            "context" : "cd",
            "contextType" : "variable",
            "element" : "system",
            "transform" : "copy",
            "parameter" : [{
              "valueString" : "https://dhis2.org/fhir/cancer-registry/CodeSystem/CRBehaviourCS"
            }]
          }]
        },
        {
          "name" : "behavvalcode",
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
      "name" : "creategrade",
      "source" : [{
        "context" : "src",
        "element" : "crGrade",
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
        "name" : "gradestatus",
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
        "name" : "gradecode",
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
          "name" : "gradecodesys",
          "source" : [{
            "context" : "src"
          }],
          "target" : [{
            "context" : "cd",
            "contextType" : "variable",
            "element" : "system",
            "transform" : "copy",
            "parameter" : [{
              "valueString" : "http://loinc.org"
            }]
          }]
        },
        {
          "name" : "gradecodeval",
          "source" : [{
            "context" : "src"
          }],
          "target" : [{
            "context" : "cd",
            "contextType" : "variable",
            "element" : "code",
            "transform" : "copy",
            "parameter" : [{
              "valueString" : "33732-9"
            }]
          }]
        }]
      },
      {
        "name" : "gradevalue",
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
          "name" : "gradevalsys",
          "source" : [{
            "context" : "val"
          }],
          "target" : [{
            "context" : "cd",
            "contextType" : "variable",
            "element" : "system",
            "transform" : "copy",
            "parameter" : [{
              "valueString" : "https://dhis2.org/fhir/cancer-registry/CodeSystem/CRGradeCS"
            }]
          }]
        },
        {
          "name" : "gradevalcode",
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
      "name" : "createbasis",
      "source" : [{
        "context" : "src",
        "element" : "crBasisDiagnosis",
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
        "name" : "basisstatus",
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
        "name" : "basiscode",
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
          "name" : "basiscodesys",
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
          "name" : "basiscodeval",
          "source" : [{
            "context" : "src"
          }],
          "target" : [{
            "context" : "cd",
            "contextType" : "variable",
            "element" : "code",
            "transform" : "copy",
            "parameter" : [{
              "valueString" : "basis-of-diagnosis"
            }]
          }]
        }]
      },
      {
        "name" : "basisvalue",
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
          "name" : "basisvalsys",
          "source" : [{
            "context" : "val"
          }],
          "target" : [{
            "context" : "cd",
            "contextType" : "variable",
            "element" : "system",
            "transform" : "copy",
            "parameter" : [{
              "valueString" : "https://dhis2.org/fhir/cancer-registry/CodeSystem/CRBasisDiagnosisCS"
            }]
          }]
        },
        {
          "name" : "basisvalcode",
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
      "name" : "createsite",
      "source" : [{
        "context" : "src",
        "element" : "crSite",
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
        "name" : "sitestatus",
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
        "name" : "sitecode",
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
          "name" : "sitecodesys",
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
          "name" : "sitecodeval",
          "source" : [{
            "context" : "src"
          }],
          "target" : [{
            "context" : "cd",
            "contextType" : "variable",
            "element" : "code",
            "transform" : "copy",
            "parameter" : [{
              "valueString" : "site"
            }]
          }]
        }]
      },
      {
        "name" : "sitevalue",
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
          "name" : "sitevalsys",
          "source" : [{
            "context" : "val"
          }],
          "target" : [{
            "context" : "cd",
            "contextType" : "variable",
            "element" : "system",
            "transform" : "copy",
            "parameter" : [{
              "valueString" : "https://dhis2.org/fhir/cancer-registry/CodeSystem/CRSiteCS"
            }]
          }]
        },
        {
          "name" : "sitevalcode",
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
      "name" : "createincidencedate",
      "source" : [{
        "context" : "src",
        "element" : "crIncidenceDate",
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
        "name" : "incdatestatus",
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
        "name" : "incdatecode",
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
          "name" : "incdatecodesys",
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
          "name" : "incdatecodeval",
          "source" : [{
            "context" : "src"
          }],
          "target" : [{
            "context" : "cd",
            "contextType" : "variable",
            "element" : "code",
            "transform" : "copy",
            "parameter" : [{
              "valueString" : "incidence-date"
            }]
          }]
        }]
      },
      {
        "name" : "incdatevalue",
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
    },
    {
      "name" : "createage",
      "source" : [{
        "context" : "src",
        "element" : "crAge",
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
        "name" : "agestatus",
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
        "name" : "agecode",
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
          "name" : "agecodesys",
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
          "name" : "agecodeval",
          "source" : [{
            "context" : "src"
          }],
          "target" : [{
            "context" : "cd",
            "contextType" : "variable",
            "element" : "code",
            "transform" : "copy",
            "parameter" : [{
              "valueString" : "age-at-incidence"
            }]
          }]
        }]
      },
      {
        "name" : "agevalue",
        "source" : [{
          "context" : "val"
        }],
        "target" : [{
          "context" : "obs",
          "contextType" : "variable",
          "element" : "value",
          "variable" : "i",
          "transform" : "create",
          "parameter" : [{
            "valueString" : "integer"
          }]
        },
        {
          "context" : "i",
          "contextType" : "variable",
          "element" : "value",
          "transform" : "copy",
          "parameter" : [{
            "valueId" : "val"
          }]
        }]
      }]
    },
    {
      "name" : "createtumornumber",
      "source" : [{
        "context" : "src",
        "element" : "crTumorNumber",
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
        "name" : "tnstatus",
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
        "name" : "tncode",
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
          "name" : "tncodesys",
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
          "name" : "tncodeval",
          "source" : [{
            "context" : "src"
          }],
          "target" : [{
            "context" : "cd",
            "contextType" : "variable",
            "element" : "code",
            "transform" : "copy",
            "parameter" : [{
              "valueString" : "tumor-number"
            }]
          }]
        }]
      },
      {
        "name" : "tnvalue",
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
          "name" : "tnvalsys",
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
          "name" : "tnvalcode",
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
      "name" : "createaddress",
      "source" : [{
        "context" : "src",
        "element" : "crAddress",
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
        "name" : "addrstatus",
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
        "name" : "addrcode",
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
          "name" : "addrcodesys",
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
          "name" : "addrcodeval",
          "source" : [{
            "context" : "src"
          }],
          "target" : [{
            "context" : "cd",
            "contextType" : "variable",
            "element" : "code",
            "transform" : "copy",
            "parameter" : [{
              "valueString" : "address"
            }]
          }]
        }]
      },
      {
        "name" : "addrvalue",
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
          "name" : "addrvalsys",
          "source" : [{
            "context" : "val"
          }],
          "target" : [{
            "context" : "cd",
            "contextType" : "variable",
            "element" : "system",
            "transform" : "copy",
            "parameter" : [{
              "valueString" : "https://dhis2.org/fhir/cancer-registry/CodeSystem/CRAddressCS"
            }]
          }]
        },
        {
          "name" : "addrvalcode",
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
