# CR - Morphology Family - DHIS2 Cancer Registry Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **CR - Morphology Family**

## CodeSystem: CR - Morphology Family 

| | |
| :--- | :--- |
| *Official URL*:https://dhis2.org/fhir/cancer-registry/CodeSystem/CRMorphologyFamilyCS | *Version*:0.1.0 |
| Draft as of 2026-04-14 | *Computable Name*:CRMorphologyFamilyCS |

 
Morphological family grouping codes derived from the CanReg5 MorphFam.txt lookup file. Each morphology code is assigned to a morphological family, which is used in the Sex-Morphology check (to identify rare sex-morphology combinations) and the Topography-Morphology check (to evaluate morphology-topography combinations against MUST and MUST-NOT lookup tables). Code 99 (N/A) indicates the family is accepted with any topography. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [CRMorphologyFamilyVS](ValueSet-CRMorphologyFamilyVS.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "CRMorphologyFamilyCS",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/uv/crmi/StructureDefinition/crmi-shareablecodesystem",
    "http://hl7.org/fhir/uv/crmi/StructureDefinition/crmi-publishablecodesystem"]
  },
  "url" : "https://dhis2.org/fhir/cancer-registry/CodeSystem/CRMorphologyFamilyCS",
  "version" : "0.1.0",
  "name" : "CRMorphologyFamilyCS",
  "title" : "CR - Morphology Family",
  "status" : "draft",
  "experimental" : false,
  "date" : "2026-04-14T07:58:39+00:00",
  "publisher" : "DHIS2",
  "contact" : [{
    "name" : "DHIS2",
    "telecom" : [{
      "system" : "url",
      "value" : "http://dhis2.org"
    }]
  }],
  "description" : "Morphological family grouping codes derived from the CanReg5 MorphFam.txt lookup file. Each morphology code is assigned to a morphological family, which is used in the Sex-Morphology check (to identify rare sex-morphology combinations) and the Topography-Morphology check (to evaluate morphology-topography combinations against MUST and MUST-NOT lookup tables). Code 99 (N/A) indicates the family is accepted with any topography.",
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 71,
  "concept" : [{
    "code" : "1",
    "display" : "Salivary gland tumours (01)"
  },
  {
    "code" : "2",
    "display" : "Stomach tumours (02)"
  },
  {
    "code" : "3",
    "display" : "Small intestine tumours (03)"
  },
  {
    "code" : "4",
    "display" : "Colo-rectal tumours (04)"
  },
  {
    "code" : "5",
    "display" : "Anal tumours (05)"
  },
  {
    "code" : "6",
    "display" : "Gastrointestinal tumours (06)"
  },
  {
    "code" : "7",
    "display" : "Liver tumours (07)"
  },
  {
    "code" : "8",
    "display" : "Biliary tumours (08)"
  },
  {
    "code" : "9",
    "display" : "Pancreatic tumours (09)"
  },
  {
    "code" : "10",
    "display" : "Olfactory tumours (10)"
  },
  {
    "code" : "11",
    "display" : "Lung tumours (11)"
  },
  {
    "code" : "12",
    "display" : "Mesotheliomas and pleuropulmonary blastomas (12)"
  },
  {
    "code" : "13",
    "display" : "Thymus tumours (13)"
  },
  {
    "code" : "14",
    "display" : "Cystic tumours of atrio-ventricular node (14)"
  },
  {
    "code" : "15",
    "display" : "Askin tumours (15)"
  },
  {
    "code" : "16",
    "display" : "Adamantinomas of long bones (16)"
  },
  {
    "code" : "17",
    "display" : "Bone tumours (17)"
  },
  {
    "code" : "18",
    "display" : "Haematopoietic tumours (18)"
  },
  {
    "code" : "19",
    "display" : "Skin tumours (19)"
  },
  {
    "code" : "20",
    "display" : "Tumours of skin and subcutaneous tissue (20)"
  },
  {
    "code" : "21",
    "display" : "Breast tumours (21)"
  },
  {
    "code" : "22",
    "display" : "Genital rhabdomyomas (22)"
  },
  {
    "code" : "23",
    "display" : "Endometrial stromal sarcomas (23)"
  },
  {
    "code" : "24",
    "display" : "Ovarian tumours (24)"
  },
  {
    "code" : "25",
    "display" : "Placental tumours (25)"
  },
  {
    "code" : "26",
    "display" : "Tumours of female genital organs (26)"
  },
  {
    "code" : "27",
    "display" : "Queyrat erythroplasias (27)"
  },
  {
    "code" : "28",
    "display" : "Testicular tumours (28)"
  },
  {
    "code" : "29",
    "display" : "Renal tumours (29)"
  },
  {
    "code" : "30",
    "display" : "Retinoblastomas (30)"
  },
  {
    "code" : "31",
    "display" : "Naevi and melanomas of the eye (31)"
  },
  {
    "code" : "32",
    "display" : "Meningeal tumours (32)"
  },
  {
    "code" : "33",
    "display" : "Cerebellar tumours (33)"
  },
  {
    "code" : "34",
    "display" : "Cerebral tumours (34)"
  },
  {
    "code" : "35",
    "display" : "CNS tumours (35)"
  },
  {
    "code" : "36",
    "display" : "Thyroid tumours (36)"
  },
  {
    "code" : "37",
    "display" : "Adrenal tumours (37)"
  },
  {
    "code" : "38",
    "display" : "Parathyroid tumours (38)"
  },
  {
    "code" : "39",
    "display" : "Pituitary tumours (39)"
  },
  {
    "code" : "40",
    "display" : "Pineal tumours (40)"
  },
  {
    "code" : "41",
    "display" : "Carotid body tumours (41)"
  },
  {
    "code" : "42",
    "display" : "Tumours of glomus jugulare/aortic body (42)"
  },
  {
    "code" : "43",
    "display" : "Adenoid basal carcinomas (43)"
  },
  {
    "code" : "44",
    "display" : "Gastrinomas, Somatostatinomas, Enteroglucagonomas (44)"
  },
  {
    "code" : "45",
    "display" : "Oxyphilic adenocarcinomas (45)"
  },
  {
    "code" : "46",
    "display" : "Papillary (cyst)adeno-carcinomas (46)"
  },
  {
    "code" : "47",
    "display" : "Serous surface papillary carcinomas (47)"
  },
  {
    "code" : "48",
    "display" : "Gonadal tumours (48)"
  },
  {
    "code" : "49",
    "display" : "Naevi and Melanomas (49)"
  },
  {
    "code" : "50",
    "display" : "Adenosarcomas and Mesonephromas (50)"
  },
  {
    "code" : "51",
    "display" : "Stromal sarcomas (51)"
  },
  {
    "code" : "52",
    "display" : "Tumours of bone and connective tissue (52)"
  },
  {
    "code" : "53",
    "display" : "Chondromatous tumours (53)"
  },
  {
    "code" : "54",
    "display" : "Intraepithelial tumours (54)"
  },
  {
    "code" : "55",
    "display" : "Transitional cell tumours (55)"
  },
  {
    "code" : "56",
    "display" : "Carcinoid tumours (56)"
  },
  {
    "code" : "57",
    "display" : "Ductal and lobular tumours (57)"
  },
  {
    "code" : "58",
    "display" : "Paragangliomas (58)"
  },
  {
    "code" : "59",
    "display" : "Germ cell and trophoblastic tumours (59)"
  },
  {
    "code" : "60",
    "display" : "Choriocarcinomas (60)"
  },
  {
    "code" : "61",
    "display" : "Chordomas (61)"
  },
  {
    "code" : "62",
    "display" : "Neuroepitheliomatous tumours (62)"
  },
  {
    "code" : "63",
    "display" : "Nerve sheath tumours (63)"
  },
  {
    "code" : "64",
    "display" : "Not haematopoietic tumours (64)"
  },
  {
    "code" : "65",
    "display" : "Not site-specific carcinomas (65)"
  },
  {
    "code" : "66",
    "display" : "Not site-specific sarcomas (66)"
  },
  {
    "code" : "67",
    "display" : "Giant cell sarcomas (67)"
  },
  {
    "code" : "68",
    "display" : "Not CNS affecting sarcomas (68)"
  },
  {
    "code" : "69",
    "display" : "Kaposi sarcoma (69)"
  },
  {
    "code" : "70",
    "display" : "Plasmacytomas, extramedullary (70)"
  },
  {
    "code" : "99",
    "display" : "N/A (**)"
  }]
}

```
