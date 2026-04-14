# Transform: Cancer Registry Enrollment to Patient - DHIS2 Cancer Registry Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Transform: Cancer Registry Enrollment to Patient**

## StructureMap: Transform: Cancer Registry Enrollment to Patient 

| | |
| :--- | :--- |
| *Official URL*:https://dhis2.org/fhir/cancer-registry/StructureMap/CancerRegistryToPatient | *Version*:0.1.0 |
| Draft as of 2026-04-14 | *Computable Name*:CancerRegistryToPatient |

 
Transform: Cancer Registry Enrollment to Patient 



## Resource Content

```json
{
  "resourceType" : "StructureMap",
  "id" : "CancerRegistryToPatient",
  "url" : "https://dhis2.org/fhir/cancer-registry/StructureMap/CancerRegistryToPatient",
  "version" : "0.1.0",
  "name" : "CancerRegistryToPatient",
  "title" : "Transform: Cancer Registry Enrollment to Patient",
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
  "description" : "Transform: Cancer Registry Enrollment to Patient",
  "structure" : [{
    "url" : "https://dhis2.org/fhir/cancer-registry/StructureDefinition/CancerRegistry",
    "mode" : "source",
    "alias" : "CancerRegistry"
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/Patient",
    "mode" : "target",
    "alias" : "Patient"
  }],
  "group" : [{
    "name" : "CancerRegistryToPatient",
    "typeMode" : "none",
    "input" : [{
      "name" : "src",
      "type" : "CancerRegistry",
      "mode" : "source"
    },
    {
      "name" : "tgt",
      "type" : "Patient",
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
            "valueString" : "https://dhis2.org/fhir/cancer-registry/StructureDefinition/cr-patient"
          }]
        }]
      }]
    },
    {
      "name" : "setidentifier",
      "source" : [{
        "context" : "src",
        "element" : "crPatientId",
        "variable" : "patientId"
      }],
      "target" : [{
        "context" : "tgt",
        "contextType" : "variable",
        "element" : "identifier",
        "variable" : "ident"
      }],
      "rule" : [{
        "name" : "setidvalue",
        "source" : [{
          "context" : "patientId"
        }],
        "target" : [{
          "context" : "ident",
          "contextType" : "variable",
          "element" : "value",
          "transform" : "copy",
          "parameter" : [{
            "valueId" : "patientId"
          }]
        }]
      },
      {
        "name" : "setidtype",
        "source" : [{
          "context" : "patientId"
        }],
        "target" : [{
          "context" : "ident",
          "contextType" : "variable",
          "element" : "type",
          "variable" : "idType"
        }],
        "rule" : [{
          "name" : "settypecoding",
          "source" : [{
            "context" : "patientId"
          }],
          "target" : [{
            "context" : "idType",
            "contextType" : "variable",
            "element" : "coding",
            "variable" : "coding"
          }],
          "rule" : [{
            "name" : "setidsystem",
            "source" : [{
              "context" : "patientId"
            }],
            "target" : [{
              "context" : "coding",
              "contextType" : "variable",
              "element" : "system",
              "transform" : "copy",
              "parameter" : [{
                "valueString" : "http://terminology.hl7.org/CodeSystem/v2-0203"
              }]
            }]
          },
          {
            "name" : "setidcode",
            "source" : [{
              "context" : "patientId"
            }],
            "target" : [{
              "context" : "coding",
              "contextType" : "variable",
              "element" : "code",
              "transform" : "copy",
              "parameter" : [{
                "valueString" : "MR"
              }]
            }]
          }]
        }]
      }]
    },
    {
      "name" : "setname",
      "source" : [{
        "context" : "src"
      }],
      "target" : [{
        "context" : "tgt",
        "contextType" : "variable",
        "element" : "name",
        "variable" : "name"
      }],
      "rule" : [{
        "name" : "setfamily",
        "source" : [{
          "context" : "src",
          "element" : "familyName",
          "variable" : "fn"
        }],
        "target" : [{
          "context" : "name",
          "contextType" : "variable",
          "element" : "family",
          "transform" : "copy",
          "parameter" : [{
            "valueId" : "fn"
          }]
        }]
      },
      {
        "name" : "setgiven",
        "source" : [{
          "context" : "src",
          "element" : "givenName",
          "variable" : "gn"
        }],
        "target" : [{
          "context" : "name",
          "contextType" : "variable",
          "element" : "given",
          "transform" : "copy",
          "parameter" : [{
            "valueId" : "gn"
          }]
        }]
      }]
    },
    {
      "name" : "sexmale",
      "source" : [{
        "context" : "src",
        "element" : "crSex",
        "variable" : "sex",
        "condition" : "sex = '1'"
      }],
      "target" : [{
        "context" : "tgt",
        "contextType" : "variable",
        "element" : "gender",
        "transform" : "copy",
        "parameter" : [{
          "valueString" : "male"
        }]
      }]
    },
    {
      "name" : "sexfemale",
      "source" : [{
        "context" : "src",
        "element" : "crSex",
        "variable" : "sex",
        "condition" : "sex = '2'"
      }],
      "target" : [{
        "context" : "tgt",
        "contextType" : "variable",
        "element" : "gender",
        "transform" : "copy",
        "parameter" : [{
          "valueString" : "female"
        }]
      }]
    },
    {
      "name" : "sexunknown",
      "source" : [{
        "context" : "src",
        "element" : "crSex",
        "variable" : "sex",
        "condition" : "sex = '9'"
      }],
      "target" : [{
        "context" : "tgt",
        "contextType" : "variable",
        "element" : "gender",
        "transform" : "copy",
        "parameter" : [{
          "valueString" : "unknown"
        }]
      }]
    },
    {
      "name" : "setbirthdate",
      "source" : [{
        "context" : "src",
        "element" : "dateOfBirth",
        "variable" : "dob"
      }],
      "target" : [{
        "context" : "tgt",
        "contextType" : "variable",
        "element" : "birthDate",
        "transform" : "copy",
        "parameter" : [{
          "valueId" : "dob"
        }]
      }]
    }]
  }]
}

```
