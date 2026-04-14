# Cancer Registry Observation Codes - DHIS2 Cancer Registry Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Cancer Registry Observation Codes**

## CodeSystem: Cancer Registry Observation Codes 

| | |
| :--- | :--- |
| *Official URL*:https://dhis2.org/fhir/cancer-registry/CodeSystem/cr-observation-codes | *Version*:0.1.0 |
| Draft as of 2026-04-14 | *Computable Name*:CRObservationCodesCS |

 
Code system defining observation type codes for cancer registry observations. Used where no standard LOINC code exists for cancer-registry-specific concepts. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [CRObservationCodesVS](ValueSet-cr-observation-codes-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "cr-observation-codes",
  "url" : "https://dhis2.org/fhir/cancer-registry/CodeSystem/cr-observation-codes",
  "version" : "0.1.0",
  "name" : "CRObservationCodesCS",
  "title" : "Cancer Registry Observation Codes",
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
  "description" : "Code system defining observation type codes for cancer registry observations. Used where no standard LOINC code exists for cancer-registry-specific concepts.",
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 13,
  "concept" : [{
    "code" : "topography",
    "display" : "Topography",
    "definition" : "ICD-O-3 topography code indicating the anatomical site of the primary tumour."
  },
  {
    "code" : "morphology",
    "display" : "Morphology",
    "definition" : "ICD-O-3 morphology code (4-digit histological type) of the neoplasm."
  },
  {
    "code" : "behaviour",
    "display" : "Behaviour",
    "definition" : "ICD-O-3 behaviour code of the neoplasm (0=benign, 1=uncertain, 2=in situ, 3=malignant)."
  },
  {
    "code" : "basis-of-diagnosis",
    "display" : "Basis of Diagnosis",
    "definition" : "How the cancer diagnosis was established. Coded according to the ICD-O-3 basis of diagnosis classification (codes 0–9)."
  },
  {
    "code" : "site",
    "display" : "Site",
    "definition" : "Higher-level anatomical site grouping derived from the ICD-O-3 topography."
  },
  {
    "code" : "incidence-date",
    "display" : "Incidence Date",
    "definition" : "Date of incidence (diagnosis date) of the cancer case."
  },
  {
    "code" : "age-at-incidence",
    "display" : "Age at Incidence",
    "definition" : "Age of the patient at the date of incidence."
  },
  {
    "code" : "address",
    "display" : "Address",
    "definition" : "Administrative address code of the patient at incidence."
  },
  {
    "code" : "tumor-number",
    "display" : "Tumor Number",
    "definition" : "Sequential tumor number within the patient's registration."
  },
  {
    "code" : "vital-status",
    "display" : "Vital Status",
    "definition" : "Follow-up vital status of the registered cancer patient (alive, dead, or unknown)."
  },
  {
    "code" : "date-of-death",
    "display" : "Date of Death",
    "definition" : "Date of death of the patient."
  },
  {
    "code" : "source-type",
    "display" : "Source Type",
    "definition" : "Type of documentation source that notified the cancer registry about a case (e.g. hospital, laboratory, death certificate)."
  },
  {
    "code" : "source-tumor-number",
    "display" : "Source Tumor Number",
    "definition" : "Tumor number that this source notification relates to."
  }]
}

```
