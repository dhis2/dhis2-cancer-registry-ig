# CR - Topography Group - DHIS2 Cancer Registry Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **CR - Topography Group**

## CodeSystem: CR - Topography Group 

| | |
| :--- | :--- |
| *Official URL*:https://dhis2.org/fhir/cancer-registry/CodeSystem/CRTopographyGroupCS | *Version*:0.1.0 |
| Draft as of 2026-04-10 | *Computable Name*:CRTopographyGroupCS |

 
Topography group codes used in the Multiple Primary Tester data quality check. Groups are derived from topography codes using the mapping logic defined in the CanReg5 DefaultMultiplePrimaryTester class. Group 80 indicates an unspecified topography. These groups determine whether tumours at different sites should be considered duplicate or multiple primaries. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [CRTopographyGroupVS](ValueSet-CRTopographyGroupVS.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "CRTopographyGroupCS",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/uv/crmi/StructureDefinition/crmi-shareablecodesystem",
    "http://hl7.org/fhir/uv/crmi/StructureDefinition/crmi-publishablecodesystem"]
  },
  "url" : "https://dhis2.org/fhir/cancer-registry/CodeSystem/CRTopographyGroupCS",
  "version" : "0.1.0",
  "name" : "CRTopographyGroupCS",
  "title" : "CR - Topography Group",
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
  "description" : "Topography group codes used in the Multiple Primary Tester data quality check. Groups are derived from topography codes using the mapping logic defined in the CanReg5 DefaultMultiplePrimaryTester class. Group 80 indicates an unspecified topography. These groups determine whether tumours at different sites should be considered duplicate or multiple primaries.",
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 56,
  "concept" : [{
    "code" : "0",
    "display" : "0"
  },
  {
    "code" : "1",
    "display" : "1"
  },
  {
    "code" : "3",
    "display" : "3"
  },
  {
    "code" : "7",
    "display" : "7"
  },
  {
    "code" : "8",
    "display" : "8"
  },
  {
    "code" : "9",
    "display" : "9"
  },
  {
    "code" : "11",
    "display" : "11"
  },
  {
    "code" : "15",
    "display" : "15"
  },
  {
    "code" : "16",
    "display" : "16"
  },
  {
    "code" : "17",
    "display" : "17"
  },
  {
    "code" : "18",
    "display" : "18"
  },
  {
    "code" : "19",
    "display" : "19"
  },
  {
    "code" : "21",
    "display" : "21"
  },
  {
    "code" : "22",
    "display" : "22"
  },
  {
    "code" : "23",
    "display" : "23"
  },
  {
    "code" : "25",
    "display" : "25"
  },
  {
    "code" : "26",
    "display" : "26"
  },
  {
    "code" : "30",
    "display" : "30"
  },
  {
    "code" : "31",
    "display" : "31"
  },
  {
    "code" : "32",
    "display" : "32"
  },
  {
    "code" : "33",
    "display" : "33"
  },
  {
    "code" : "35",
    "display" : "35"
  },
  {
    "code" : "36",
    "display" : "36"
  },
  {
    "code" : "37",
    "display" : "37"
  },
  {
    "code" : "38",
    "display" : "38"
  },
  {
    "code" : "39",
    "display" : "39"
  },
  {
    "code" : "40",
    "display" : "40"
  },
  {
    "code" : "42",
    "display" : "42"
  },
  {
    "code" : "44",
    "display" : "44"
  },
  {
    "code" : "47",
    "display" : "47"
  },
  {
    "code" : "48",
    "display" : "48"
  },
  {
    "code" : "49",
    "display" : "49"
  },
  {
    "code" : "50",
    "display" : "50"
  },
  {
    "code" : "51",
    "display" : "51"
  },
  {
    "code" : "52",
    "display" : "52"
  },
  {
    "code" : "53",
    "display" : "53"
  },
  {
    "code" : "54",
    "display" : "54"
  },
  {
    "code" : "55",
    "display" : "55"
  },
  {
    "code" : "56",
    "display" : "56"
  },
  {
    "code" : "57",
    "display" : "57"
  },
  {
    "code" : "60",
    "display" : "60"
  },
  {
    "code" : "61",
    "display" : "61"
  },
  {
    "code" : "62",
    "display" : "62"
  },
  {
    "code" : "63",
    "display" : "63"
  },
  {
    "code" : "64",
    "display" : "64"
  },
  {
    "code" : "65",
    "display" : "65"
  },
  {
    "code" : "69",
    "display" : "69"
  },
  {
    "code" : "70",
    "display" : "70"
  },
  {
    "code" : "71",
    "display" : "71"
  },
  {
    "code" : "72",
    "display" : "72"
  },
  {
    "code" : "73",
    "display" : "73"
  },
  {
    "code" : "74",
    "display" : "74"
  },
  {
    "code" : "75",
    "display" : "75"
  },
  {
    "code" : "76",
    "display" : "76"
  },
  {
    "code" : "77",
    "display" : "77"
  },
  {
    "code" : "80",
    "display" : "80"
  }]
}

```
