# CR - Basis diagnosis - DHIS2 Cancer Registry Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **CR - Basis diagnosis**

## CodeSystem: CR - Basis diagnosis 

| | |
| :--- | :--- |
| *Official URL*:https://dhis2.org/fhir/cancer-registry/CodeSystem/CRBasisDiagnosisCS | *Version*:0.1.0 |
| Draft as of 2026-04-10 | *Computable Name*:CRBasisDiagnosisCS |

 
Basis of diagnosis codes aligned with the CanReg5 basis dictionary. Codes 0-4 represent non-microscopically confirmed diagnoses (death certificate only, clinical, clinical investigation/ultrasound, surgery/autopsy, laboratory test). Codes 5-8 represent microscopically confirmed diagnoses (cytology, histology of metastasis, histology of primary, autopsy with histology). Code 9 represents unknown basis. Used in the Basis data quality check. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [CRBasisDiagnosisVS](ValueSet-CRBasisDiagnosisVS.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "CRBasisDiagnosisCS",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/uv/crmi/StructureDefinition/crmi-shareablecodesystem",
    "http://hl7.org/fhir/uv/crmi/StructureDefinition/crmi-publishablecodesystem"]
  },
  "url" : "https://dhis2.org/fhir/cancer-registry/CodeSystem/CRBasisDiagnosisCS",
  "version" : "0.1.0",
  "name" : "CRBasisDiagnosisCS",
  "title" : "CR - Basis diagnosis",
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
  "description" : "Basis of diagnosis codes aligned with the CanReg5 basis dictionary. Codes 0-4 represent non-microscopically confirmed diagnoses (death certificate only, clinical, clinical investigation/ultrasound, surgery/autopsy, laboratory test). Codes 5-8 represent microscopically confirmed diagnoses (cytology, histology of metastasis, histology of primary, autopsy with histology). Code 9 represents unknown basis. Used in the Basis data quality check.",
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 10,
  "concept" : [{
    "code" : "0",
    "display" : "Death Certificate Only (0)"
  },
  {
    "code" : "1",
    "display" : "Clinical only (1)"
  },
  {
    "code" : "2",
    "display" : "Clin. Invest./Ult Soun (2)"
  },
  {
    "code" : "3",
    "display" : "Surgery/Autopsy (3)"
  },
  {
    "code" : "4",
    "display" : "Laboratory test (4)"
  },
  {
    "code" : "5",
    "display" : "Cytology (5)"
  },
  {
    "code" : "6",
    "display" : "Histology of metastase (6)"
  },
  {
    "code" : "7",
    "display" : "Histology of primary (7)"
  },
  {
    "code" : "8",
    "display" : "Autopsy/Histology (8)"
  },
  {
    "code" : "9",
    "display" : "Unknown (9)"
  }]
}

```
