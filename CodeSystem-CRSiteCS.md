# CR - Site - DHIS2 Cancer Registry Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **CR - Site**

## CodeSystem: CR - Site 

| | |
| :--- | :--- |
| *Official URL*:https://dhis2.org/fhir/cancer-registry/CodeSystem/CRSiteCS | *Version*:0.1.0 |
| Draft as of 2026-04-10 | *Computable Name*:CRSiteCS |

 
Anatomical site codes used to filter topography values in a dependent dropdown list. When a site is selected, only the topography codes valid for the chosen site are presented for selection, simplifying data entry for registry staff. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [CRSiteVS](ValueSet-CRSiteVS.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "CRSiteCS",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/uv/crmi/StructureDefinition/crmi-shareablecodesystem",
    "http://hl7.org/fhir/uv/crmi/StructureDefinition/crmi-publishablecodesystem"]
  },
  "url" : "https://dhis2.org/fhir/cancer-registry/CodeSystem/CRSiteCS",
  "version" : "0.1.0",
  "name" : "CRSiteCS",
  "title" : "CR - Site",
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
  "description" : "Anatomical site codes used to filter topography values in a dependent dropdown list. When a site is selected, only the topography codes valid for the chosen site are presented for selection, simplifying data entry for registry staff.",
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 70,
  "concept" : [{
    "code" : "0",
    "display" : "Lip (00)"
  },
  {
    "code" : "1",
    "display" : "Base of tongue (01)"
  },
  {
    "code" : "2",
    "display" : "Other and unspecified parts of tongue (02)"
  },
  {
    "code" : "3",
    "display" : "Gum (03)"
  },
  {
    "code" : "4",
    "display" : "Floor of mouth (04)"
  },
  {
    "code" : "5",
    "display" : "Palate (05)"
  },
  {
    "code" : "6",
    "display" : "Other and unspecified parts of mouth (06)"
  },
  {
    "code" : "7",
    "display" : "Parotid glanid (07)"
  },
  {
    "code" : "8",
    "display" : "Other and unspecified major salivary glands (08)"
  },
  {
    "code" : "9",
    "display" : "Tonsil (09)"
  },
  {
    "code" : "10",
    "display" : "Oropharynx (10)"
  },
  {
    "code" : "11",
    "display" : "Nasopharynx (11)"
  },
  {
    "code" : "12",
    "display" : "Pyriform sinus (12)"
  },
  {
    "code" : "13",
    "display" : "Hypopharynx (13)"
  },
  {
    "code" : "14",
    "display" : "Other and ill-defined sites in lip, oral cavity and pharynx (14)"
  },
  {
    "code" : "15",
    "display" : "Esophagus (15)"
  },
  {
    "code" : "16",
    "display" : "Stomach (16)"
  },
  {
    "code" : "17",
    "display" : "Small intestine (17)"
  },
  {
    "code" : "18",
    "display" : "Colon (18)"
  },
  {
    "code" : "19",
    "display" : "Rectosigmoid junction (19)"
  },
  {
    "code" : "20",
    "display" : "Rectum (20)"
  },
  {
    "code" : "21",
    "display" : "Anus and anal canal (21)"
  },
  {
    "code" : "22",
    "display" : "Liver and intrahepatic bile ducts (22)"
  },
  {
    "code" : "23",
    "display" : "Gallbladder (23)"
  },
  {
    "code" : "24",
    "display" : "Other and unspecified parts of biliary tract (24)"
  },
  {
    "code" : "25",
    "display" : "Pancreas (25)"
  },
  {
    "code" : "26",
    "display" : "Other and ill-defined digestive organs (26)"
  },
  {
    "code" : "30",
    "display" : "Nasal cavity and middle ear (30)"
  },
  {
    "code" : "31",
    "display" : "Accessory sinuses (31)"
  },
  {
    "code" : "32",
    "display" : "Larynx (32)"
  },
  {
    "code" : "33",
    "display" : "Trachea (33)"
  },
  {
    "code" : "34",
    "display" : "Bronchus and lung (34)"
  },
  {
    "code" : "37",
    "display" : "Thymus (37)"
  },
  {
    "code" : "38",
    "display" : "Heart, mediastinum, and pleura (38)"
  },
  {
    "code" : "39",
    "display" : "Other and ill-defined sites within respiratory system amd intrathoracic organs (39)"
  },
  {
    "code" : "40",
    "display" : "Bones, joints and articular cartilage of limbs (40)"
  },
  {
    "code" : "41",
    "display" : "Bones, joints and articular cartilage of other and unspecified sites (41)"
  },
  {
    "code" : "42",
    "display" : "Hematopoietic and reticuloendothelial systems (42)"
  },
  {
    "code" : "44",
    "display" : "Skin (44)"
  },
  {
    "code" : "47",
    "display" : "Peripheral nerves and autonomic nervous system (47)"
  },
  {
    "code" : "48",
    "display" : "Retroperitoneum and peritoneum (48)"
  },
  {
    "code" : "49",
    "display" : "Connective, subcutaneous and other soft tissues (49)"
  },
  {
    "code" : "50",
    "display" : "Breast (50)"
  },
  {
    "code" : "51",
    "display" : "Vulva (51)"
  },
  {
    "code" : "52",
    "display" : "Vagina (52)"
  },
  {
    "code" : "53",
    "display" : "Cervix uteri (53)"
  },
  {
    "code" : "54",
    "display" : "Corpus uteri (54)"
  },
  {
    "code" : "55",
    "display" : "Uterus, nos (55)"
  },
  {
    "code" : "56",
    "display" : "Ovary (56)"
  },
  {
    "code" : "57",
    "display" : "Other an unspecified female genital organs (57)"
  },
  {
    "code" : "58",
    "display" : "Placenta (58)"
  },
  {
    "code" : "60",
    "display" : "Penis (60)"
  },
  {
    "code" : "61",
    "display" : "Prostate gland (61)"
  },
  {
    "code" : "62",
    "display" : "Testis (62)"
  },
  {
    "code" : "63",
    "display" : "Other and unspecified male genital organs (63)"
  },
  {
    "code" : "64",
    "display" : "Kidney (64)"
  },
  {
    "code" : "65",
    "display" : "Renal pelvis (65)"
  },
  {
    "code" : "66",
    "display" : "Ureter (66)"
  },
  {
    "code" : "67",
    "display" : "Bladder (67)"
  },
  {
    "code" : "68",
    "display" : "Other and unspecified urinary organs (68)"
  },
  {
    "code" : "69",
    "display" : "Eye and adnexa (69)"
  },
  {
    "code" : "70",
    "display" : "Meninges (70)"
  },
  {
    "code" : "71",
    "display" : "Brain (71)"
  },
  {
    "code" : "72",
    "display" : "Spinal cord, cranial nerves, and other parts of central nervous system (72)"
  },
  {
    "code" : "73",
    "display" : "Thyroid gland (73)"
  },
  {
    "code" : "74",
    "display" : "Adrenal gland (74)"
  },
  {
    "code" : "75",
    "display" : "Other endocrine glands and related structures (75)"
  },
  {
    "code" : "76",
    "display" : "Other and ill-defined sites (76)"
  },
  {
    "code" : "77",
    "display" : "Lymph nodes (77)"
  },
  {
    "code" : "80",
    "display" : "Unknown primary site (80)"
  }]
}

```
