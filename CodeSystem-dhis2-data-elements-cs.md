# DHIS2 Data Elements - DHIS2 Cancer Registry Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **DHIS2 Data Elements**

## CodeSystem: DHIS2 Data Elements 

| | |
| :--- | :--- |
| *Official URL*:https://dhis2.org/fhir/cancer-registry/CodeSystem/dhis2-data-elements-cs | *Version*:0.1.0 |
| Draft as of 2026-04-14 | *Computable Name*:Dhis2DataElementsCS |

 
Code system for 47 unique DHIS2 data elements from all selected programs 

 This Code system is referenced in the content logical definition of the following value sets: 

* This CodeSystem is not used here; it may be used elsewhere (e.g. specifications and/or implementations that use this content)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "dhis2-data-elements-cs",
  "url" : "https://dhis2.org/fhir/cancer-registry/CodeSystem/dhis2-data-elements-cs",
  "version" : "0.1.0",
  "name" : "Dhis2DataElementsCS",
  "title" : "DHIS2 Data Elements",
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
  "description" : "Code system for 47 unique DHIS2 data elements from all selected programs",
  "content" : "complete",
  "count" : 47,
  "concept" : [{
    "code" : "c6EnHSAMUat",
    "display" : "CR - Incidence date",
    "definition" : "CR - Incidence date"
  },
  {
    "code" : "tasm9QG8HaF",
    "display" : "CR - Age",
    "definition" : "CR - Age"
  },
  {
    "code" : "xcUBzN5QFXu",
    "display" : "CR - Address",
    "definition" : "CR - Address"
  },
  {
    "code" : "KgDQLAkC5ql",
    "display" : "CR - Tumor number",
    "definition" : "CR - Tumor number"
  },
  {
    "code" : "LCSApBii8CI",
    "display" : "CR - Site",
    "definition" : "CR - Site"
  },
  {
    "code" : "zw6Vwqnhvmh",
    "display" : "CR - Topography",
    "definition" : "CR - Topography"
  },
  {
    "code" : "UkyyY1xukJg",
    "display" : "CR - Morphology",
    "definition" : "CR - Morphology"
  },
  {
    "code" : "MMIuwJdjx8B",
    "display" : "CR - Behaviour",
    "definition" : "CR - Behaviour"
  },
  {
    "code" : "uoyoNWrexbY",
    "display" : "CR - Basis diagnosis",
    "definition" : "CR - Basis diagnosis"
  },
  {
    "code" : "ZMD8dwB3zOZ",
    "display" : "CR - Grade",
    "definition" : "CR - Grade"
  },
  {
    "code" : "FlGHlAuG4Ly",
    "display" : "CR - Checks: Run checks",
    "definition" : "CR - Checks: Run checks"
  },
  {
    "code" : "nFJ2MJ8Vxuj",
    "display" : "CR - Run Topography Morphology check",
    "definition" : "CR - Run Topography Morphology check"
  },
  {
    "code" : "rqpqtJZto2L",
    "display" : "CR - Run Multiple primary check",
    "definition" : "CR - Run Multiple primary check"
  },
  {
    "code" : "mxfPEKn6kFt",
    "display" : "CR - Checks: Rare Age Morphology",
    "definition" : "CR - Checks: Rare Age Morphology"
  },
  {
    "code" : "rPvQffpxaEs",
    "display" : "CR - Checks: Rare Age Topography",
    "definition" : "CR - Checks: Rare Age Topography"
  },
  {
    "code" : "Laax6wSBp2G",
    "display" : "CR - Checks: Rare Age Topography Morphology",
    "definition" : "CR - Checks: Rare Age Topography Morphology"
  },
  {
    "code" : "U8v95tUnazC",
    "display" : "CR - Checks: Rare Basis",
    "definition" : "CR - Checks: Rare Basis"
  },
  {
    "code" : "doB0rv08MIc",
    "display" : "CR - Checks: Invalid Grade",
    "definition" : "CR - Checks: Invalid Grade"
  },
  {
    "code" : "FH09UKj7HMC",
    "display" : "CR - Checks: Rare Sex Morphology",
    "definition" : "CR - Checks: Rare Sex Morphology"
  },
  {
    "code" : "wAmyuRZNNXC",
    "display" : "CR - Checks: Invalid Sex Topography",
    "definition" : "CR - Checks: Invalid Sex Topography"
  },
  {
    "code" : "ugeBdJzYHVW",
    "display" : "CR - Checks: Rare Topography Behaviour",
    "definition" : "CR - Checks: Rare Topography Behaviour"
  },
  {
    "code" : "fdvzxz58nEE",
    "display" : "CR - Checks: Rare Topography Morphology",
    "definition" : "CR - Checks: Rare Topography Morphology"
  },
  {
    "code" : "VBkjlEwG4BE",
    "display" : "CR - Checks: Multiple primary test result",
    "definition" : "CR - Checks: Multiple primary test result"
  },
  {
    "code" : "jTW2ljvoIc6",
    "display" : "CR - Rare",
    "definition" : "CR - Rare"
  },
  {
    "code" : "TXtHNzrfmki",
    "display" : "CR - Invalid",
    "definition" : "CR - Invalid"
  },
  {
    "code" : "RBu5b3A68mq",
    "display" : "CR - Morphology Family",
    "definition" : "CR - Morphology Family"
  },
  {
    "code" : "XR1U9dr60xI",
    "display" : "CR - Topography Morphology key",
    "definition" : "CR - Topography Morphology key"
  },
  {
    "code" : "oZyJlKscN6G",
    "display" : "CR - Present in the MUST list",
    "definition" : "CR - Present in the MUST list"
  },
  {
    "code" : "DyVH5Q3Qf0Q",
    "display" : "CR - Present in the MUST-NOT list",
    "definition" : "CR - Present in the MUST-NOT list"
  },
  {
    "code" : "yt3gq8onyKb",
    "display" : "CR - Morphology group",
    "definition" : "CR - Morphology group"
  },
  {
    "code" : "eGWudq2aGpY",
    "display" : "CR - Previous morphology group",
    "definition" : "CR - Previous morphology group"
  },
  {
    "code" : "dTbQZsduHT7",
    "display" : "CR - Previous morphology group (multiple)",
    "definition" : "CR - Previous morphology group (multiple)"
  },
  {
    "code" : "RmzIYvxiBm4",
    "display" : "CR - Topography group",
    "definition" : "CR - Topography group"
  },
  {
    "code" : "FyzoZsxRjjz",
    "display" : "CR - Previous topography group",
    "definition" : "CR - Previous topography group"
  },
  {
    "code" : "IhLiguJKuzz",
    "display" : "CR - Previous topography group (multiple)",
    "definition" : "CR - Previous topography group (multiple)"
  },
  {
    "code" : "n4IHuWceDlW",
    "display" : "CR - Morphology result",
    "definition" : "CR - Morphology result"
  },
  {
    "code" : "z3JSu92EQhg",
    "display" : "CR - Confirm the rare status",
    "definition" : "CR - Confirm the rare status"
  },
  {
    "code" : "KwMs1DNVA0R",
    "display" : "CR - TUMOURID",
    "definition" : "CR - TUMOURID"
  },
  {
    "code" : "OrVAWBySU43",
    "display" : "CR - Previous tumor number",
    "definition" : "CR - Previous tumor number"
  },
  {
    "code" : "EMoLghRDW4A",
    "display" : "CR - Patient ID",
    "definition" : "CR - Patient ID"
  },
  {
    "code" : "fID2of7Q8Jj",
    "display" : "CR - Source: Tumor number",
    "definition" : "CR - Source: Tumor number"
  },
  {
    "code" : "TgjO873BZTu",
    "display" : "CR - Source date",
    "definition" : "CR - Source date"
  },
  {
    "code" : "Mqz5dPrwWho",
    "display" : "CR - Source Type",
    "definition" : "CR - Source Type"
  },
  {
    "code" : "HxMFZcIIZpL",
    "display" : "CR - TUMOURIDSOURCETABLE",
    "definition" : "CR - TUMOURIDSOURCETABLE"
  },
  {
    "code" : "Ks2WWWWCuzq",
    "display" : "CR - Date last contact",
    "definition" : "CR - Date last contact"
  },
  {
    "code" : "nMpcjKFF5zt",
    "display" : "CR - Status",
    "definition" : "CR - Status"
  },
  {
    "code" : "hCJqPZcw2n6",
    "display" : "CR - Date of death",
    "definition" : "CR - Date of death"
  }]
}

```
