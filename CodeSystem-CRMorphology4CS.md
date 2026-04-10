# CR - Morphology4 - DHIS2 Cancer Registry Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **CR - Morphology4**

## CodeSystem: CR - Morphology4 

| | |
| :--- | :--- |
| *Official URL*:https://dhis2.org/fhir/cancer-registry/CodeSystem/CRMorphology4CS | *Version*:0.1.0 |
| Draft as of 2026-04-10 | *Computable Name*:CRMorphology4CS |

 
ICD-O-3.2 morphology codes (first four digits) mapped from the CanReg5 morphology dictionary (morphology4.tsv). These codes represent the histological type of the neoplasm. Since the field is configured as a closed option set, validity of morphology values is guaranteed by the data entry interface. Codes must not be modified as they are mapped directly to CanReg5 standards and used in multiple data quality checks. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [CRMorphology4VS](ValueSet-CRMorphology4VS.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "CRMorphology4CS",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/uv/crmi/StructureDefinition/crmi-shareablecodesystem",
    "http://hl7.org/fhir/uv/crmi/StructureDefinition/crmi-publishablecodesystem"]
  },
  "url" : "https://dhis2.org/fhir/cancer-registry/CodeSystem/CRMorphology4CS",
  "version" : "0.1.0",
  "name" : "CRMorphology4CS",
  "title" : "CR - Morphology4",
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
  "description" : "ICD-O-3.2 morphology codes (first four digits) mapped from the CanReg5 morphology dictionary (morphology4.tsv). These codes represent the histological type of the neoplasm. Since the field is configured as a closed option set, validity of morphology values is guaranteed by the data entry interface. Codes must not be modified as they are mapped directly to CanReg5 standards and used in multiple data quality checks.",
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 643,
  "concept" : [{
    "code" : "8000",
    "display" : "Neoplasm, malignant (8000)"
  },
  {
    "code" : "8001",
    "display" : "Tumor cells, malignant (8001)"
  },
  {
    "code" : "8002",
    "display" : "Malignant tumor, small cell type (8002)"
  },
  {
    "code" : "8003",
    "display" : "Malignant tumor, giant cell type (8003)"
  },
  {
    "code" : "8004",
    "display" : "Malignant tumor, spindle cell type (8004)"
  },
  {
    "code" : "8005",
    "display" : "Malignant tumor, clear cell type (8005)"
  },
  {
    "code" : "8010",
    "display" : "Carcinoma, NOS (8010)"
  },
  {
    "code" : "8011",
    "display" : "Epithelioma, malignant (8011)"
  },
  {
    "code" : "8012",
    "display" : "Large cell carcinoma, NOS (8012)"
  },
  {
    "code" : "8013",
    "display" : "Large cell neuroendocrine carcinoma (8013)"
  },
  {
    "code" : "8014",
    "display" : "Large cell carcinoma with rhabdoid phenotype (8014)"
  },
  {
    "code" : "8015",
    "display" : "Glassy cell carcinoma (8015)"
  },
  {
    "code" : "8020",
    "display" : "Carcinoma, undifferentiated, NOS (8020)"
  },
  {
    "code" : "8021",
    "display" : "Carcinoma, anaplastic, NOS (8021)"
  },
  {
    "code" : "8022",
    "display" : "Pleomorphic carcinoma (8022)"
  },
  {
    "code" : "8023",
    "display" : "Nuclear protein in testis (NUT) associated carcinoma (8023)"
  },
  {
    "code" : "8030",
    "display" : "Giant cell and spindle cell carcinoma (8030)"
  },
  {
    "code" : "8031",
    "display" : "Giant cell carcinoma (8031)"
  },
  {
    "code" : "8032",
    "display" : "Spindle cell carcinoma, NOS (8032)"
  },
  {
    "code" : "8033",
    "display" : "Pseudosarcomatous carcinoma (8033)"
  },
  {
    "code" : "8034",
    "display" : "Polygonal cell carcinoma (8034)"
  },
  {
    "code" : "8035",
    "display" : "Carcinoma with osteoclast-like giant cells (8035)"
  },
  {
    "code" : "8041",
    "display" : "Small cell carcinoma, NOS (8041)"
  },
  {
    "code" : "8042",
    "display" : "Oat cell carcinoma (C34._) (8042)"
  },
  {
    "code" : "8043",
    "display" : "Small cell carcinoma, fusiform cell (8043)"
  },
  {
    "code" : "8044",
    "display" : "Small cell carcinoma, intermediate cell (8044)"
  },
  {
    "code" : "8045",
    "display" : "Combined small cell carcinoma (8045)"
  },
  {
    "code" : "8046",
    "display" : "Non-small cell carcinoma (C34._) (8046)"
  },
  {
    "code" : "8050",
    "display" : "Papillary carcinoma, NOS (8050)"
  },
  {
    "code" : "8051",
    "display" : "Verrucous carcinoma, NOS (8051)"
  },
  {
    "code" : "8052",
    "display" : "Papillary squamous cell carcinoma (8052)"
  },
  {
    "code" : "8054",
    "display" : "Warty carcinoma/dyskeratoma (8054)"
  },
  {
    "code" : "8070",
    "display" : "Squamous cell carcinoma, NOS (8070)"
  },
  {
    "code" : "8071",
    "display" : "Squamous cell carcinoma, keratinizing, NOS (8071)"
  },
  {
    "code" : "8072",
    "display" : "Squamous cell carcinoma, large cell, nonkeratinizing, NOS (8072)"
  },
  {
    "code" : "8073",
    "display" : "Squamous cell carcinoma, small cell, nonkeratinizing (8073)"
  },
  {
    "code" : "8074",
    "display" : "Squamous cell carcinoma, spindle cell (8074)"
  },
  {
    "code" : "8075",
    "display" : "Squamous cell carcinoma, adenoid (8075)"
  },
  {
    "code" : "8076",
    "display" : "Squamous cell carcinoma, microinvasive (8076)"
  },
  {
    "code" : "8078",
    "display" : "Squamous cell carcinoma with horn formation (8078)"
  },
  {
    "code" : "8082",
    "display" : "Lymphoepithelial carcinoma (8082)"
  },
  {
    "code" : "8083",
    "display" : "Basaloid squamous cell carcinoma (8083)"
  },
  {
    "code" : "8084",
    "display" : "Squamous cell carcinoma, clear cell type (8084)"
  },
  {
    "code" : "8085",
    "display" : "Squamous cell carcinoma, HPV-positive (8085)"
  },
  {
    "code" : "8086",
    "display" : "Squamous cell carcinoma, HPV-negative (8086)"
  },
  {
    "code" : "8090",
    "display" : "Basal cell carcinoma, NOS (C44._) (8090)"
  },
  {
    "code" : "8091",
    "display" : "Multifocal superficial basal cell carcinoma (C44._) (8091)"
  },
  {
    "code" : "8092",
    "display" : "Infiltrating basal cell carcinoma, NOS (C44._) (8092)"
  },
  {
    "code" : "8093",
    "display" : "Basal cell carcinoma, fibroepithelial (C44._) (8093)"
  },
  {
    "code" : "8094",
    "display" : "Basosquamous carcinoma (C44._) (8094)"
  },
  {
    "code" : "8095",
    "display" : "Metatypical carcinoma (C44._) (8095)"
  },
  {
    "code" : "8097",
    "display" : "Basal cell carcinoma, nodular (C44._) (8097)"
  },
  {
    "code" : "8098",
    "display" : "Adenoid basal carcinoma (C53._) (8098)"
  },
  {
    "code" : "8102",
    "display" : "Trichilemmocarcinoma (C44._) (8102)"
  },
  {
    "code" : "8104",
    "display" : "Pilar sheath acanthoma (C44._) (8104)"
  },
  {
    "code" : "8110",
    "display" : "Pilomatrix carcinoma (C44._) (8110)"
  },
  {
    "code" : "8120",
    "display" : "Transitional cell carcinoma (8120)"
  },
  {
    "code" : "8121",
    "display" : "Schneiderian carcinoma (C30.0, C31._) (8121)"
  },
  {
    "code" : "8122",
    "display" : "Transitional cell carcinoma, spindle cell (8122)"
  },
  {
    "code" : "8123",
    "display" : "Basaloid carcinoma (8123)"
  },
  {
    "code" : "8124",
    "display" : "Cloacogenic carcinoma (C21.2) (8124)"
  },
  {
    "code" : "8130",
    "display" : "Papillary transitional cell carcinoma (C67._) (8130)"
  },
  {
    "code" : "8131",
    "display" : "Transitional cell carcinoma, micropapillary (C67._) (8131)"
  },
  {
    "code" : "8140",
    "display" : "Adenocarcinoma, NOS (8140)"
  },
  {
    "code" : "8141",
    "display" : "Scirrhous adenocarcinoma (8141)"
  },
  {
    "code" : "8142",
    "display" : "Linitis plastica (C16._) (8142)"
  },
  {
    "code" : "8143",
    "display" : "Superficial spreading adenocarcinoma (8143)"
  },
  {
    "code" : "8144",
    "display" : "Adenocarcinoma, intestinal type (C16._) (8144)"
  },
  {
    "code" : "8145",
    "display" : "Carcinoma, diffuse type (C16._) (8145)"
  },
  {
    "code" : "8147",
    "display" : "Basal cell adenocarcinoma (8147)"
  },
  {
    "code" : "8150",
    "display" : "Pancreatic endocrine tumor, malignant (8150)"
  },
  {
    "code" : "8151",
    "display" : "Insulinoma, malignant (C25._) (8151)"
  },
  {
    "code" : "8152",
    "display" : "Glucagonoma, malignant (C25._) (8152)"
  },
  {
    "code" : "8153",
    "display" : "Gastrinoma, malignant (8153)"
  },
  {
    "code" : "8154",
    "display" : "Mixed pancreatic endocrine and exocrine tumor, malignant (C25._) (8154)"
  },
  {
    "code" : "8155",
    "display" : "Vipoma, malignant (8155)"
  },
  {
    "code" : "8156",
    "display" : "Somatostatinoma, malignant (8156)"
  },
  {
    "code" : "8160",
    "display" : "Cholangiocarcinoma (C22.1, C24.0) (8160)"
  },
  {
    "code" : "8161",
    "display" : "Bile duct cystadenocarcinoma (C22.1, C24.0) (8161)"
  },
  {
    "code" : "8162",
    "display" : "Klatskin tumor (C22.1, C24.0) (8162)"
  },
  {
    "code" : "8163",
    "display" : "Pancreatobiliary-type carcinoma (C24.1) (8163)"
  },
  {
    "code" : "8170",
    "display" : "Hepatocellular carcinoma, NOS (C22.0) (8170)"
  },
  {
    "code" : "8171",
    "display" : "Hepatocellular carcinoma, fibrolamellar (C22.0) (8171)"
  },
  {
    "code" : "8172",
    "display" : "Hepatocellular carcinoma, scirrhous (C22.0) (8172)"
  },
  {
    "code" : "8173",
    "display" : "Hepatocellular carcinoma, spindle cell variant (C22.0) (8173)"
  },
  {
    "code" : "8174",
    "display" : "Hepatocellular carcinoma, clear cell type (C22.0) (8174)"
  },
  {
    "code" : "8175",
    "display" : "Hepatocellular carcinoma, pleomorphic type (C22.0) (8175)"
  },
  {
    "code" : "8180",
    "display" : "Combined hepatocellular carcinoma and cholangiocarcinoma (C22.0) (8180)"
  },
  {
    "code" : "8190",
    "display" : "Trabecular adenocarcinoma (8190)"
  },
  {
    "code" : "8200",
    "display" : "Adenoid cystic carcinoma (8200)"
  },
  {
    "code" : "8201",
    "display" : "Cribriform carcinoma, NOS (8201)"
  },
  {
    "code" : "8210",
    "display" : "Adenocarcinoma in adenomatous polyp (8210)"
  },
  {
    "code" : "8211",
    "display" : "Tubular adenocarcinoma (8211)"
  },
  {
    "code" : "8213",
    "display" : "Serrated adenocarcinoma (8213)"
  },
  {
    "code" : "8214",
    "display" : "Parietal cell carcinoma (C16._) (8214)"
  },
  {
    "code" : "8215",
    "display" : "Adenocarcinoma of anal glands (C21.1) (8215)"
  },
  {
    "code" : "8220",
    "display" : "Adenocarcinoma in adenomatous polyposis coli (C18._) (8220)"
  },
  {
    "code" : "8221",
    "display" : "Adenocarcinoma in multiple adenomatous polyps (8221)"
  },
  {
    "code" : "8230",
    "display" : "Solid carcinoma, NOS (8230)"
  },
  {
    "code" : "8231",
    "display" : "Carcinoma simplex (8231)"
  },
  {
    "code" : "8240",
    "display" : "Carcinoid tumor, NOS (8240)"
  },
  {
    "code" : "8241",
    "display" : "Enterochromaffin cell carcinoid (8241)"
  },
  {
    "code" : "8242",
    "display" : "Enterochromaffin-like cell tumor, malignant (8242)"
  },
  {
    "code" : "8243",
    "display" : "Goblet cell carcinoid (8243)"
  },
  {
    "code" : "8244",
    "display" : "Mixed adenoneuroendocrine carcinoma (8244)"
  },
  {
    "code" : "8245",
    "display" : "Adenocarcinoid tumor (8245)"
  },
  {
    "code" : "8246",
    "display" : "Neuroendocrine carcinoma, NOS (8246)"
  },
  {
    "code" : "8247",
    "display" : "Merkel cell carcinoma (C44._) (8247)"
  },
  {
    "code" : "8249",
    "display" : "Atypical carcinoid tumor (8249)"
  },
  {
    "code" : "8250",
    "display" : "Bronchiolo-alveolar adenocarcinoma, NOS (C34._) (8250)"
  },
  {
    "code" : "8251",
    "display" : "Alveolar adenocarcinoma (C34._) (8251)"
  },
  {
    "code" : "8252",
    "display" : "Bronchiolo-alveolar carcinoma, non-mucinous (C34._) (8252)"
  },
  {
    "code" : "8253",
    "display" : "Bronchio-alveolar carcinoma, mucinous (C34._) (8253)"
  },
  {
    "code" : "8254",
    "display" : "Bronchio-alveolar carcinoma, mixed mucinous and non-mucinous (C34._) (8254)"
  },
  {
    "code" : "8255",
    "display" : "Adenocarcinoma with mixed subtypes (8255)"
  },
  {
    "code" : "8256",
    "display" : "Minimally invasive adenocarcinoma, non-mucinous (C34._) (8256)"
  },
  {
    "code" : "8257",
    "display" : "Minimally invasive adenocarcinoma, mucinous (C34._) (8257)"
  },
  {
    "code" : "8260",
    "display" : "Papillary adenocarcinoma, NOS (8260)"
  },
  {
    "code" : "8261",
    "display" : "Adenocarcinoma in villous adenoma (8261)"
  },
  {
    "code" : "8262",
    "display" : "Villous adenocarcinoma (8262)"
  },
  {
    "code" : "8263",
    "display" : "Adenocarcinoma in tubolovillous adenoma (8263)"
  },
  {
    "code" : "8265",
    "display" : "Micropapillary carcinoma, NOS (C18._, C19.9, C20.9) (8265)"
  },
  {
    "code" : "8270",
    "display" : "Chromophobe carcinoma (C75.1) (8270)"
  },
  {
    "code" : "8272",
    "display" : "Pituitary carcinoma, NOS (C75.1) (8272)"
  },
  {
    "code" : "8273",
    "display" : "Pituitary blastoma (C75.1) (8273)"
  },
  {
    "code" : "8280",
    "display" : "Acidophil carcinoma (C75.1) (8280)"
  },
  {
    "code" : "8281",
    "display" : "Mixed acidophil-basophil carcinoma (C75.1) (8281)"
  },
  {
    "code" : "8290",
    "display" : "Oxyphilic adenocarcinoma (8290)"
  },
  {
    "code" : "8300",
    "display" : "Basophil carcinoma (C75.1) (8300)"
  },
  {
    "code" : "8310",
    "display" : "Clear cell adenocarcinoma, NOS (8310)"
  },
  {
    "code" : "8312",
    "display" : "Renal cell carcinoma, NOS (C64.9) (8312)"
  },
  {
    "code" : "8313",
    "display" : "Clear cell adenocarcinofibroma (C56.9) (8313)"
  },
  {
    "code" : "8314",
    "display" : "Lipid-rich carcinoma (C50._) (8314)"
  },
  {
    "code" : "8315",
    "display" : "Glycogen-rich carcinoma (8315)"
  },
  {
    "code" : "8316",
    "display" : "Cyst-associated renal cell carcinoma (C64.9) (8316)"
  },
  {
    "code" : "8317",
    "display" : "Renal cell carcinoma, chromophobe type (C64.9) (8317)"
  },
  {
    "code" : "8318",
    "display" : "Renal cell carcinoma, sarcomatoid (C64.9) (8318)"
  },
  {
    "code" : "8319",
    "display" : "Collecting duct carcinoma (C64.9) (8319)"
  },
  {
    "code" : "8320",
    "display" : "Granular cell carcinoma (8320)"
  },
  {
    "code" : "8322",
    "display" : "Water-clear cell adenocarcinoma (C75.0) (8322)"
  },
  {
    "code" : "8323",
    "display" : "Mixed cell adenocarcinoma (8323)"
  },
  {
    "code" : "8330",
    "display" : "Follicular adenocarcinoma, NOS (C73.9) (8330)"
  },
  {
    "code" : "8331",
    "display" : "Follicular adenocarcinoma, well differentiated (C73.9) (8331)"
  },
  {
    "code" : "8332",
    "display" : "Follicular adenocarcinoma, trabecular (C73.9) (8332)"
  },
  {
    "code" : "8333",
    "display" : "Fetal adenocarcinoma (8333)"
  },
  {
    "code" : "8335",
    "display" : "Follicular carcinoma, minimally invasive (C73.9) (8335)"
  },
  {
    "code" : "8337",
    "display" : "Insular carcinoma (C73.9) (8337)"
  },
  {
    "code" : "8339",
    "display" : "Follicular carcinoma, encapsulated, angioinvasive (C73.9) (8339)"
  },
  {
    "code" : "8340",
    "display" : "Papillary carcinoma, follicular variant (C73.9) (8340)"
  },
  {
    "code" : "8341",
    "display" : "Papillary microcarcinoma (C73.9) (8341)"
  },
  {
    "code" : "8342",
    "display" : "Papillary carcinoma, oxyphilic cell (C73.9) (8342)"
  },
  {
    "code" : "8343",
    "display" : "Papillary carcinoma, encapsulated (C73.9) (8343)"
  },
  {
    "code" : "8344",
    "display" : "Papillary carcinoma, columnar cell (C73.9) (8344)"
  },
  {
    "code" : "8345",
    "display" : "Medullary carcinoma with amyloid stroma (C73.9) (8345)"
  },
  {
    "code" : "8346",
    "display" : "Mixed medullary-follicular carcinoma (C73.9) (8346)"
  },
  {
    "code" : "8347",
    "display" : "Mixed medullary-papillary carcinoma (C73.9) (8347)"
  },
  {
    "code" : "8348",
    "display" : "Well differentiated tumor of uncertain malignant potential (C73.9) (8348)"
  },
  {
    "code" : "8349",
    "display" : "Non-invasive follicular thyroid neoplasm with papillary-like nuclear features (NIFTP) (C73.9) (8349)"
  },
  {
    "code" : "8350",
    "display" : "Nonencapsulated sclerosing carcinoma (C73.9) (8350)"
  },
  {
    "code" : "8370",
    "display" : "Adrenal cortical carcinoma (C74.0) (8370)"
  },
  {
    "code" : "8380",
    "display" : "Endometrioid adenocarcinoma, NOS (8380)"
  },
  {
    "code" : "8381",
    "display" : "Endometrioid adenofibroma, malignant (8381)"
  },
  {
    "code" : "8382",
    "display" : "Endometrioid adenocarcinoma, secretory variant (8382)"
  },
  {
    "code" : "8383",
    "display" : "Endometrioid adenocarcinoma, ciliated cell variant (8383)"
  },
  {
    "code" : "8384",
    "display" : "Adenocarcinoma, endocervical type (8384)"
  },
  {
    "code" : "8390",
    "display" : "Skin appendage carcinoma (C44._) (8390)"
  },
  {
    "code" : "8400",
    "display" : "Sweat gland adenocarcinoma (C44._) (8400)"
  },
  {
    "code" : "8401",
    "display" : "Apocrine adenocarcinoma (8401)"
  },
  {
    "code" : "8402",
    "display" : "Nodular hidradenoma, malignant (C44._) (8402)"
  },
  {
    "code" : "8403",
    "display" : "Malignant eccrine spiradenoma (C44._) (8403)"
  },
  {
    "code" : "8407",
    "display" : "Sclerosing sweat duct carcinoma (C44._) (8407)"
  },
  {
    "code" : "8408",
    "display" : "Eccrine papillary adenocarcinoma (C44._) (8408)"
  },
  {
    "code" : "8409",
    "display" : "Eccrine poroma, malignant (8409)"
  },
  {
    "code" : "8410",
    "display" : "Sebaceous adenocarcinoma (C44._) (8410)"
  },
  {
    "code" : "8413",
    "display" : "Eccrine adenocarcinoma (C44._) (8413)"
  },
  {
    "code" : "8420",
    "display" : "Ceruminous adenocarcinoma (C44.2) (8420)"
  },
  {
    "code" : "8430",
    "display" : "Mucoepidermoid carcinoma (8430)"
  },
  {
    "code" : "8440",
    "display" : "Cystadenocarcinoma, NOS (8440)"
  },
  {
    "code" : "8441",
    "display" : "Serous cystadenocarcinoma, NOS (C56.9) (8441)"
  },
  {
    "code" : "8450",
    "display" : "Papillary cystadenocarcinoma, NOS (C56.9) (8450)"
  },
  {
    "code" : "8452",
    "display" : "Solid pseudopapillary carcinoma (C25._) (8452)"
  },
  {
    "code" : "8453",
    "display" : "Intraductal papillary-mucinous carcinoma, invasive (C25._) (8453)"
  },
  {
    "code" : "8460",
    "display" : "Papillary serous cystadenocarcinoma (C56.9) (8460)"
  },
  {
    "code" : "8461",
    "display" : "Serous surface papillary carcinoma (C56.9) (8461)"
  },
  {
    "code" : "8470",
    "display" : "Mucinous cystadenocarcinoma, NOS (C56.9) (8470)"
  },
  {
    "code" : "8471",
    "display" : "Papillary mucinous cystadenocarcinoma (C56.9) (8471)"
  },
  {
    "code" : "8474",
    "display" : "Seromucinous carcinoma (C56.9) (8474)"
  },
  {
    "code" : "8480",
    "display" : "Mucinous adenocarcinoma (8480)"
  },
  {
    "code" : "8481",
    "display" : "Mucin-producing adenocarcinoma (8481)"
  },
  {
    "code" : "8482",
    "display" : "Mucinous adenocarcinoma, endocervical type (8482)"
  },
  {
    "code" : "8490",
    "display" : "Signet ring cell carcinoma (8490)"
  },
  {
    "code" : "8500",
    "display" : "Infiltrating duct carcinoma, NOS (C50._) (8500)"
  },
  {
    "code" : "8501",
    "display" : "Comedocarcinoma, NOS (C50._) (8501)"
  },
  {
    "code" : "8502",
    "display" : "Secretory carcinoma of breast (C50._) (8502)"
  },
  {
    "code" : "8503",
    "display" : "Intraductal papillary adenocarcinoma with invasion (C50._) (8503)"
  },
  {
    "code" : "8504",
    "display" : "Intracystic carcinoma, NOS (8504)"
  },
  {
    "code" : "8508",
    "display" : "Cystic hypersecretory carcinoma (C50._) (8508)"
  },
  {
    "code" : "8509",
    "display" : "Solid papillary carcinoma with invasion (C50._) (8509)"
  },
  {
    "code" : "8510",
    "display" : "Medullary carcinoma, NOS (8510)"
  },
  {
    "code" : "8512",
    "display" : "Medullary carcinoma with lymphoid stroma (8512)"
  },
  {
    "code" : "8513",
    "display" : "Atypical medullary carcinoma (C50._) (8513)"
  },
  {
    "code" : "8514",
    "display" : "Duct carcinoma, desmoplastic type (8514)"
  },
  {
    "code" : "8519",
    "display" : "Lobular carcinoma in situ, pleomorphic (C50._) (8519)"
  },
  {
    "code" : "8520",
    "display" : "Lobular carcinoma, NOS (C50._) (8520)"
  },
  {
    "code" : "8521",
    "display" : "Infiltrating ductular carcinoma (C50._) (8521)"
  },
  {
    "code" : "8522",
    "display" : "Infiltrating duct and lobular carcinoma (C50._) (8522)"
  },
  {
    "code" : "8523",
    "display" : "Infiltrating duct mixed with other types of carcinoma (C50._) (8523)"
  },
  {
    "code" : "8524",
    "display" : "Infiltrating lobular mixed with other types of carcinoma (C50._) (8524)"
  },
  {
    "code" : "8525",
    "display" : "Polymorphous low grade adenocarcinoma (8525)"
  },
  {
    "code" : "8530",
    "display" : "Inflammatory carcinoma (C50._) (8530)"
  },
  {
    "code" : "8540",
    "display" : "Paget disease, mammary (C50._) (8540)"
  },
  {
    "code" : "8541",
    "display" : "Paget disease and infiltrating duct carcinoma of breast (C50._) (8541)"
  },
  {
    "code" : "8542",
    "display" : "Paget disease, extramammary (except Paget disease of bone) (8542)"
  },
  {
    "code" : "8543",
    "display" : "Paget disease and intraductal carcinoma of breast (C50._) (8543)"
  },
  {
    "code" : "8550",
    "display" : "Acinar cell carcinoma (8550)"
  },
  {
    "code" : "8551",
    "display" : "Acinar cell cystadenocarcinoma (8551)"
  },
  {
    "code" : "8552",
    "display" : "Mixed acinar-ductal carcinoma (8552)"
  },
  {
    "code" : "8560",
    "display" : "Adenosquamous carcinoma (8560)"
  },
  {
    "code" : "8562",
    "display" : "Epithelial-myoepithelial carcinoma (8562)"
  },
  {
    "code" : "8563",
    "display" : "Lymphadenoma (8563)"
  },
  {
    "code" : "8570",
    "display" : "Adenocarcinoma with squamous metaplasia (8570)"
  },
  {
    "code" : "8571",
    "display" : "Adenocarcinoma with cartilaginous and osseous metaplasia (8571)"
  },
  {
    "code" : "8572",
    "display" : "Adenocarcinoma with spindle cell metaplasia (8572)"
  },
  {
    "code" : "8573",
    "display" : "Adenocarcinoma with apocrine metaplasia (8573)"
  },
  {
    "code" : "8574",
    "display" : "Adenocarcinoma with neuroendocrine differentiation (8574)"
  },
  {
    "code" : "8575",
    "display" : "Metaplastic carcinoma, NOS (8575)"
  },
  {
    "code" : "8576",
    "display" : "Hepatoid adenocarcinoma (8576)"
  },
  {
    "code" : "8580",
    "display" : "Thymoma, malignant, NOS (C37.9) (8580)"
  },
  {
    "code" : "8581",
    "display" : "Thymoma, type A, malignant (C37.9) (8581)"
  },
  {
    "code" : "8582",
    "display" : "Thymoma, type AB, malignant (C37.9) (8582)"
  },
  {
    "code" : "8583",
    "display" : "Thymoma, type B1, malignant (C37.9) (8583)"
  },
  {
    "code" : "8584",
    "display" : "Thymoma, type B2, malignant (C37.9) (8584)"
  },
  {
    "code" : "8585",
    "display" : "Thymoma, type B3, malignant (C37.9) (8585)"
  },
  {
    "code" : "8586",
    "display" : "Thymic carcinoma, NOS (C37.9) (8586)"
  },
  {
    "code" : "8588",
    "display" : "Spindle epithelial tumor with thymus-like element (8588)"
  },
  {
    "code" : "8589",
    "display" : "Carcinoma showing thymus-like element (8589)"
  },
  {
    "code" : "8594",
    "display" : "Mixed germ cell-sex cord-stromal tumor, NOS (8594)"
  },
  {
    "code" : "8600",
    "display" : "Thecoma, malignant (C56.9) (8600)"
  },
  {
    "code" : "8620",
    "display" : "Granulosa cell tumor, malignant (C56.9) (8620)"
  },
  {
    "code" : "8630",
    "display" : "Androblastoma, malignant (8630)"
  },
  {
    "code" : "8631",
    "display" : "Sertoli-Leydig cell tumor, poorly differentiated (8631)"
  },
  {
    "code" : "8634",
    "display" : "Sertoli-Leydig cell tumor, poorly differentiated, with heterologous elements (8634)"
  },
  {
    "code" : "8640",
    "display" : "Sertoli cell carcinoma (C62._) (8640)"
  },
  {
    "code" : "8643",
    "display" : "Intratubular large cell hyalinizing Sertoli cell neoplasia (8643)"
  },
  {
    "code" : "8650",
    "display" : "Leydig cell tumor, malignant (C62._) (8650)"
  },
  {
    "code" : "8670",
    "display" : "Steroid cell tumor, malignant (8670)"
  },
  {
    "code" : "8680",
    "display" : "Paraganglioma, malignant (8680)"
  },
  {
    "code" : "8693",
    "display" : "Extra-adrenal paraganglioma, malignant (8693)"
  },
  {
    "code" : "8700",
    "display" : "Pheochromocytoma, malignant (C74.1) (8700)"
  },
  {
    "code" : "8710",
    "display" : "Glomangiosarcoma (8710)"
  },
  {
    "code" : "8711",
    "display" : "Glomus tumor, malignant (8711)"
  },
  {
    "code" : "8714",
    "display" : "Perivascular epithelioid tumor (8714)"
  },
  {
    "code" : "8720",
    "display" : "Malignant melanoma, NOS (except juvenile melanoma M-8721 (8720)"
  },
  {
    "code" : "8721",
    "display" : "Nodular melanoma (C44._) (8721)"
  },
  {
    "code" : "8722",
    "display" : "Balloon cell melanoma (C44._) (8722)"
  },
  {
    "code" : "8723",
    "display" : "Malignant melanoma, regressing (C44._) (8723)"
  },
  {
    "code" : "8728",
    "display" : "Meningeal melanomatosis (C70.9) (8728)"
  },
  {
    "code" : "8730",
    "display" : "Amelanotic melanoma (C44._) (8730)"
  },
  {
    "code" : "8740",
    "display" : "Malignant melanoma in junctional nevus (C44._) (8740)"
  },
  {
    "code" : "8741",
    "display" : "Malignant melanoma in precancerous melanosis (C44._) (8741)"
  },
  {
    "code" : "8742",
    "display" : "Lentigo maligna melanoma (C44._) (8742)"
  },
  {
    "code" : "8743",
    "display" : "Superficial spreading melanoma (C44._) (8743)"
  },
  {
    "code" : "8744",
    "display" : "Acral lentiginous melanoma, malignant (C44._) (8744)"
  },
  {
    "code" : "8745",
    "display" : "Desmoplastic melanoma, malignant (C44._) (8745)"
  },
  {
    "code" : "8746",
    "display" : "Mucosal lentiginous melanoma (8746)"
  },
  {
    "code" : "8761",
    "display" : "Malignant melanoma in giant pigmented nevus (C44._) (8761)"
  },
  {
    "code" : "8770",
    "display" : "Mixed epithelioid and spindle cell melanoma (8770)"
  },
  {
    "code" : "8771",
    "display" : "Epithelioid cell melanoma (8771)"
  },
  {
    "code" : "8772",
    "display" : "Spindle cell melanoma, NOS (8772)"
  },
  {
    "code" : "8773",
    "display" : "Spindle cell melanoma, type A (C69._) (8773)"
  },
  {
    "code" : "8774",
    "display" : "Spindle cell melanoma, type B (C69._) (8774)"
  },
  {
    "code" : "8780",
    "display" : "Blue nevus, malignant (C44._) (8780)"
  },
  {
    "code" : "8800",
    "display" : "Sarcoma, NOS (8800)"
  },
  {
    "code" : "8801",
    "display" : "Spindle cell sarcoma (8801)"
  },
  {
    "code" : "8802",
    "display" : "Giant cell sarcoma (except of bone M-9250) (8802)"
  },
  {
    "code" : "8803",
    "display" : "Small cell sarcoma (8803)"
  },
  {
    "code" : "8804",
    "display" : "Epithelioid sarcoma (8804)"
  },
  {
    "code" : "8805",
    "display" : "Undifferentiated sarcoma (8805)"
  },
  {
    "code" : "8806",
    "display" : "Desmoplastic small round cell tumor (8806)"
  },
  {
    "code" : "8810",
    "display" : "Fibrosarcoma, NOS (8810)"
  },
  {
    "code" : "8811",
    "display" : "Fibromyxosarcoma (8811)"
  },
  {
    "code" : "8812",
    "display" : "Periosteal fibrosarcoma (C40._, C41._) (8812)"
  },
  {
    "code" : "8813",
    "display" : "Fascial fibrosarcoma (8813)"
  },
  {
    "code" : "8814",
    "display" : "Infantile fibrosarcoma (8814)"
  },
  {
    "code" : "8815",
    "display" : "Solitary fibrous tumor, malignant (8815)"
  },
  {
    "code" : "8816",
    "display" : "Calcifying aponeurotic fibroma (8816)"
  },
  {
    "code" : "8817",
    "display" : "Calcifying fibrous tumor (8817)"
  },
  {
    "code" : "8818",
    "display" : "Fibrous dysplasia (8818)"
  },
  {
    "code" : "8828",
    "display" : "Nodular fasciitis (8828)"
  },
  {
    "code" : "8830",
    "display" : "Malignant fibrous histiocytoma (8830)"
  },
  {
    "code" : "8832",
    "display" : "Dermatofibrosarcoma, NOS (C44._) (8832)"
  },
  {
    "code" : "8833",
    "display" : "Pigmented dermatofibrosarcoma protuberans (C44._) (8833)"
  },
  {
    "code" : "8840",
    "display" : "Myxosarcoma (8840)"
  },
  {
    "code" : "8850",
    "display" : "Liposarcoma, NOS (8850)"
  },
  {
    "code" : "8851",
    "display" : "Lipoarcoma, well differentiated (8851)"
  },
  {
    "code" : "8852",
    "display" : "Myxoid liposarcoma (8852)"
  },
  {
    "code" : "8853",
    "display" : "Round cell liposarcoma (8853)"
  },
  {
    "code" : "8854",
    "display" : "Pleomorphic liposarcoma (8854)"
  },
  {
    "code" : "8855",
    "display" : "Mixed liposarcoma (8855)"
  },
  {
    "code" : "8857",
    "display" : "Fibroblastic liposarcoma (8857)"
  },
  {
    "code" : "8858",
    "display" : "Dedifferentiated liposarcoma (8858)"
  },
  {
    "code" : "8890",
    "display" : "Leiomyosarcoma, NOS (8890)"
  },
  {
    "code" : "8891",
    "display" : "Epithelioid leiomyosarcoma (8891)"
  },
  {
    "code" : "8894",
    "display" : "Angiomyosarcoma (8894)"
  },
  {
    "code" : "8895",
    "display" : "Myosarcoma (8895)"
  },
  {
    "code" : "8896",
    "display" : "Myxoid leiomyosarcoma (8896)"
  },
  {
    "code" : "8900",
    "display" : "Rhabdomyosarcoma, NOS (8900)"
  },
  {
    "code" : "8901",
    "display" : "Pleomorphic rhabdomyosarcoma, adult type (8901)"
  },
  {
    "code" : "8902",
    "display" : "Mixed type rhabdomyosarcoma (8902)"
  },
  {
    "code" : "8910",
    "display" : "Embryonal rhabdomyosarcoma, NOS (8910)"
  },
  {
    "code" : "8912",
    "display" : "Spindle cell rhabdomyosarcoma (8912)"
  },
  {
    "code" : "8920",
    "display" : "Alveolar rhabdomyosarcoma (8920)"
  },
  {
    "code" : "8921",
    "display" : "Rhabdomyosarcoma with ganglionic differentiation (8921)"
  },
  {
    "code" : "8930",
    "display" : "Endometrial stromal sarcoma, NOS (C54.1) (8930)"
  },
  {
    "code" : "8931",
    "display" : "Endometrial stromal sarcoma, low grade (C54.1) (8931)"
  },
  {
    "code" : "8933",
    "display" : "Adenosarcoma (8933)"
  },
  {
    "code" : "8934",
    "display" : "Carcinofibroma (8934)"
  },
  {
    "code" : "8935",
    "display" : "Stromal sarcoma, NOS (8935)"
  },
  {
    "code" : "8936",
    "display" : "Gastrointestinal stromal sarcoma (8936)"
  },
  {
    "code" : "8940",
    "display" : "Mixed tumor, malignant, NOS (8940)"
  },
  {
    "code" : "8941",
    "display" : "Carcinoma in pleomorphic adenoma (C07._, C08._) (8941)"
  },
  {
    "code" : "8950",
    "display" : "Mullerian mixed tumor (C54._) (8950)"
  },
  {
    "code" : "8951",
    "display" : "Mesodermal mixed tumor (8951)"
  },
  {
    "code" : "8959",
    "display" : "Malignant cystic nephroma (C64.9) (8959)"
  },
  {
    "code" : "8960",
    "display" : "Nephroblastoma, NOS (C64.9) (8960)"
  },
  {
    "code" : "8963",
    "display" : "Malignant rhabdoid tumor (8963)"
  },
  {
    "code" : "8964",
    "display" : "Clear cell sarcoma of kidney (C64.9) (8964)"
  },
  {
    "code" : "8970",
    "display" : "Hepatoblastoma (C22.0) (8970)"
  },
  {
    "code" : "8971",
    "display" : "Pancreatoblastoma (C25._) (8971)"
  },
  {
    "code" : "8972",
    "display" : "Pulmonary blastoma (C34._) (8972)"
  },
  {
    "code" : "8973",
    "display" : "Pleuropulmonary blastoma (8973)"
  },
  {
    "code" : "8980",
    "display" : "Carcinosarcoma, NOS (8980)"
  },
  {
    "code" : "8981",
    "display" : "Carcinosarcoma, embryonal (8981)"
  },
  {
    "code" : "8982",
    "display" : "Malignant myoepithelioma (8982)"
  },
  {
    "code" : "8990",
    "display" : "Mesenchymoma, malignant (8990)"
  },
  {
    "code" : "8991",
    "display" : "Embryonal sarcoma (8991)"
  },
  {
    "code" : "8992",
    "display" : "Pulmonary hamartoma (C34._) (8992)"
  },
  {
    "code" : "9000",
    "display" : "Brenner tumor, malignant (C56.9) (9000)"
  },
  {
    "code" : "9014",
    "display" : "Serous adenocarcinofibroma (9014)"
  },
  {
    "code" : "9015",
    "display" : "Mucinous adenocarcinofibroma (9015)"
  },
  {
    "code" : "9020",
    "display" : "Phyllodes tumor, malignant (C50._) (9020)"
  },
  {
    "code" : "9040",
    "display" : "Synovial sarcoma, NOS (9040)"
  },
  {
    "code" : "9041",
    "display" : "Synovial sarcoma, spindle cell (9041)"
  },
  {
    "code" : "9042",
    "display" : "Synovial sarcoma, epithelioid cell (9042)"
  },
  {
    "code" : "9043",
    "display" : "Synovial sarcoma, biphasic (9043)"
  },
  {
    "code" : "9044",
    "display" : "Clear cell sarcoma, NOS (except of kidney M-8964) (9044)"
  },
  {
    "code" : "9045",
    "display" : "Biphenotypic sinonasal sarcoma (C30.0, C31._) (9045)"
  },
  {
    "code" : "9050",
    "display" : "Mesothelioma, malignant (9050)"
  },
  {
    "code" : "9051",
    "display" : "Fibrous mesothelioma, malignant (9051)"
  },
  {
    "code" : "9052",
    "display" : "Epithelioid mesothelioma, malignant (9052)"
  },
  {
    "code" : "9053",
    "display" : "Mesothelioma, biphasic, malignant (9053)"
  },
  {
    "code" : "9060",
    "display" : "Dysgerminoma (9060)"
  },
  {
    "code" : "9061",
    "display" : "Seminoma, NOS (C62._) (9061)"
  },
  {
    "code" : "9062",
    "display" : "Seminoma, anaplastic (C62._) (9062)"
  },
  {
    "code" : "9063",
    "display" : "Spermatocytic seminoma (C62._) (9063)"
  },
  {
    "code" : "9064",
    "display" : "Germinoma (9064)"
  },
  {
    "code" : "9065",
    "display" : "Germ cell tumor, nonseminomatous (C62._) (9065)"
  },
  {
    "code" : "9070",
    "display" : "Embryonal carcinoma, NOS (9070)"
  },
  {
    "code" : "9071",
    "display" : "Yolk sac tumor (9071)"
  },
  {
    "code" : "9072",
    "display" : "Polyembryoma (9072)"
  },
  {
    "code" : "9080",
    "display" : "Teratoma, malignant, NOS (9080)"
  },
  {
    "code" : "9081",
    "display" : "Teratocarcinoma (9081)"
  },
  {
    "code" : "9082",
    "display" : "Malignant teratoma, undifferentiated (9082)"
  },
  {
    "code" : "9083",
    "display" : "Malignant teratoma, intermediate (9083)"
  },
  {
    "code" : "9084",
    "display" : "Teratoma with malignant transformation (9084)"
  },
  {
    "code" : "9085",
    "display" : "Mixed germ cell tumor (9085)"
  },
  {
    "code" : "9086",
    "display" : "Germ cell tumor with associated hematological malignancy (9086)"
  },
  {
    "code" : "9090",
    "display" : "Struma ovarii, malignant (C56.9) (9090)"
  },
  {
    "code" : "9100",
    "display" : "Choriocarcinoma, NOS (9100)"
  },
  {
    "code" : "9101",
    "display" : "Choriocarcinoma combined with other germ cell elements (9101)"
  },
  {
    "code" : "9102",
    "display" : "Malignant teratoma, trophoblastic (9102)"
  },
  {
    "code" : "9105",
    "display" : "Trophoblastic tumor, epithelioid (9105)"
  },
  {
    "code" : "9110",
    "display" : "Mesonephroma, malignant (9110)"
  },
  {
    "code" : "9120",
    "display" : "Haemangiosarcoma (9120)"
  },
  {
    "code" : "9124",
    "display" : "Kupffer cell sarcoma (C22.0) (9124)"
  },
  {
    "code" : "9126",
    "display" : "Atypical vascular lesion (9126)"
  },
  {
    "code" : "9130",
    "display" : "Hemangioendothelioma, malignant (9130)"
  },
  {
    "code" : "9133",
    "display" : "Epithelioid hemangioendothelioma, malignant (9133)"
  },
  {
    "code" : "9137",
    "display" : "Intimal sarcoma/Myointimoma (9137)"
  },
  {
    "code" : "9138",
    "display" : "Pseudomyogenic (epithelioid sarcoma-like) hemangioendothelioma (9138)"
  },
  {
    "code" : "9140",
    "display" : "Kaposi sarcoma (9140)"
  },
  {
    "code" : "9150",
    "display" : "Hemangiopericytoma, malignant (9150)"
  },
  {
    "code" : "9170",
    "display" : "Lymphangiosarcoma (9170)"
  },
  {
    "code" : "9180",
    "display" : "Osteosarcoma, NOS (C40._,C41._) (9180)"
  },
  {
    "code" : "9181",
    "display" : "Chondroblastic osteosarcoma (C40._,C41._) (9181)"
  },
  {
    "code" : "9182",
    "display" : "Fibroblastic osteosarcoma (C40._,C41._) (9182)"
  },
  {
    "code" : "9183",
    "display" : "Telangiectatic osteosarcoma (C40._,C41._) (9183)"
  },
  {
    "code" : "9184",
    "display" : "Osteosarcoma in Paget disease of bone (C40._,C41._) (9184)"
  },
  {
    "code" : "9185",
    "display" : "Small cell osteosarcoma (C40._,C41._) (9185)"
  },
  {
    "code" : "9186",
    "display" : "Central osteosarcoma (C40._,C41._) (9186)"
  },
  {
    "code" : "9187",
    "display" : "Intraosseous well differentiated osteosarcoma (C40._,C41._) (9187)"
  },
  {
    "code" : "9192",
    "display" : "Parosteal osteosarcoma (C40._,C41._) (9192)"
  },
  {
    "code" : "9193",
    "display" : "Periosteal osteosarcoma (C40._,C41._) (9193)"
  },
  {
    "code" : "9194",
    "display" : "High grade surface osteosarcoma (C40._,C41._) (9194)"
  },
  {
    "code" : "9195",
    "display" : "Intracortical osteosarcoma (C40._,C41._) (9195)"
  },
  {
    "code" : "9211",
    "display" : "Osteochondromyxoma (9211)"
  },
  {
    "code" : "9212",
    "display" : "Bizarre parosteal osteochondromatous proliferation (9212)"
  },
  {
    "code" : "9213",
    "display" : "Subungual exostosis (9213)"
  },
  {
    "code" : "9220",
    "display" : "Chondrosarcoma, NOS (C40._,C41._) (9220)"
  },
  {
    "code" : "9221",
    "display" : "Juxtacortical chondrosarcoma (C40._,C41._) (9221)"
  },
  {
    "code" : "9222",
    "display" : "Atypical cartilaginous tumor (9222)"
  },
  {
    "code" : "9230",
    "display" : "Chondroblastoma, malignant (C40._,C41._) (9230)"
  },
  {
    "code" : "9231",
    "display" : "Myxoid chondrosarcoma (9231)"
  },
  {
    "code" : "9240",
    "display" : "Mesenchymal chondrosarcoma (9240)"
  },
  {
    "code" : "9242",
    "display" : "Clear cell chondrosarcoma (C40._,C41._) (9242)"
  },
  {
    "code" : "9243",
    "display" : "Dedifferentiated chondrosarcoma (C40._,C41._) (9243)"
  },
  {
    "code" : "9250",
    "display" : "Giant cell tumor of bone, malignant (C40._,C41._) (9250)"
  },
  {
    "code" : "9251",
    "display" : "Malignant giant cell tumor of soft parts (9251)"
  },
  {
    "code" : "9252",
    "display" : "Malignant tenosynovial giant cell tumor (C49._) (9252)"
  },
  {
    "code" : "9260",
    "display" : "Ewing sarcoma (9260)"
  },
  {
    "code" : "9261",
    "display" : "Adamantinoma of long bones (C40._) (9261)"
  },
  {
    "code" : "9270",
    "display" : "Odontogenic tumor, malignant (9270)"
  },
  {
    "code" : "9290",
    "display" : "Ameloblastic odontosarcoma (9290)"
  },
  {
    "code" : "9310",
    "display" : "Ameloblastoma, malignant (9310)"
  },
  {
    "code" : "9330",
    "display" : "Ameloblastic fibrosarcoma (9330)"
  },
  {
    "code" : "9342",
    "display" : "Odontogenic carcinosarcoma (9342)"
  },
  {
    "code" : "9362",
    "display" : "Pineoblastoma (C75.3) (9362)"
  },
  {
    "code" : "9364",
    "display" : "Peripheral neuroectodermal tumor (9364)"
  },
  {
    "code" : "9365",
    "display" : "Askin tumor (9365)"
  },
  {
    "code" : "9370",
    "display" : "Chordoma, NOS (9370)"
  },
  {
    "code" : "9371",
    "display" : "Chondroid chordoma (9371)"
  },
  {
    "code" : "9372",
    "display" : "Dedifferentiated chordoma (9372)"
  },
  {
    "code" : "9380",
    "display" : "Glioma, malignant (C71._) (9380)"
  },
  {
    "code" : "9381",
    "display" : "Gliomatosis cerebri (C71._) (9381)"
  },
  {
    "code" : "9382",
    "display" : "Mixed glioma (C71._) (9382)"
  },
  {
    "code" : "9385",
    "display" : "Diffuse midline glioma, H3 K27M-mutant (C71._) (9385)"
  },
  {
    "code" : "9390",
    "display" : "Choroid plexus carcinoma (C71.5) (9390)"
  },
  {
    "code" : "9391",
    "display" : "Ependymoma, NOS (C71._) (9391)"
  },
  {
    "code" : "9392",
    "display" : "Ependymoma, anaplastic (C71._) (9392)"
  },
  {
    "code" : "9393",
    "display" : "Papillary ependymoma (C71._) (9393)"
  },
  {
    "code" : "9395",
    "display" : "Papillary tumor of the pineal region (9395)"
  },
  {
    "code" : "9396",
    "display" : "Ependymoma, RELA fusion-positive (C71._) (9396)"
  },
  {
    "code" : "9400",
    "display" : "Astrocytoma, NOS (C71._) (9400)"
  },
  {
    "code" : "9401",
    "display" : "Astrocytoma, anaplastic (C71._) (9401)"
  },
  {
    "code" : "9410",
    "display" : "Protoplasmic astrocytoma (C71._) (9410)"
  },
  {
    "code" : "9411",
    "display" : "Gemistocytic astrocytoma (C71._) (9411)"
  },
  {
    "code" : "9420",
    "display" : "Fibrillary astrocytoma (C71._) (9420)"
  },
  {
    "code" : "9423",
    "display" : "Polar spongioblastoma (C71._) (9423)"
  },
  {
    "code" : "9424",
    "display" : "Pleomorphic xanthoastrocytoma (C71._) (9424)"
  },
  {
    "code" : "9425",
    "display" : "Pilomyxoid astrocytoma (9425)"
  },
  {
    "code" : "9430",
    "display" : "Astroblastoma (C71._) (9430)"
  },
  {
    "code" : "9440",
    "display" : "Glioblastoma (C71._) (9440)"
  },
  {
    "code" : "9441",
    "display" : "Giant cell glioblastoma (C71._) (9441)"
  },
  {
    "code" : "9442",
    "display" : "Gliosarcoma (C71._) (9442)"
  },
  {
    "code" : "9445",
    "display" : "Glioblastoma, IDH-mutant (C71._) (9445)"
  },
  {
    "code" : "9450",
    "display" : "Oligodendroglioma, NOS (C71._) (9450)"
  },
  {
    "code" : "9451",
    "display" : "Oligodendroglioma, anaplastic (C71._) (9451)"
  },
  {
    "code" : "9460",
    "display" : "Oligodendroblastoma (C71._) [obs] (9460)"
  },
  {
    "code" : "9470",
    "display" : "Medulloblastoma, NOS (C71.6) (9470)"
  },
  {
    "code" : "9471",
    "display" : "Desmoplastic nodular medulloblastoma (C71.6) (9471)"
  },
  {
    "code" : "9472",
    "display" : "Medullomyoblastoma (C71.6) (9472)"
  },
  {
    "code" : "9473",
    "display" : "Primitive neuroectodermal tumor, NOS (9473)"
  },
  {
    "code" : "9474",
    "display" : "Large cell medulloblastoma (C71.6) (9474)"
  },
  {
    "code" : "9475",
    "display" : "Medulloblastoma, WNT-activated, NOS (C71.6) (9475)"
  },
  {
    "code" : "9476",
    "display" : "Medulloblastoma, SHH-activated and TP53-mutant (C71.6) (9476)"
  },
  {
    "code" : "9477",
    "display" : "Medulloblastoma, non-WNT/non-SHH (C71.6) (9477)"
  },
  {
    "code" : "9478",
    "display" : "Embryonal tumor with multilayered rosettes with C19MC alteration (C71._) (9478)"
  },
  {
    "code" : "9480",
    "display" : "Cerebellar sarcoma, NOS (C71.6) [obs] (9480)"
  },
  {
    "code" : "9490",
    "display" : "Ganglioneuroblastoma (9490)"
  },
  {
    "code" : "9500",
    "display" : "Neuroblastoma, NOS (9500)"
  },
  {
    "code" : "9501",
    "display" : "Medulloepithelioma, NOS (9501)"
  },
  {
    "code" : "9502",
    "display" : "Teratoid medulloepithelioma (9502)"
  },
  {
    "code" : "9503",
    "display" : "Neuroepithelioma, NOS (9503)"
  },
  {
    "code" : "9504",
    "display" : "Spongioneuroblastoma (9504)"
  },
  {
    "code" : "9505",
    "display" : "Ganglioglioma, anaplastic (9505)"
  },
  {
    "code" : "9508",
    "display" : "Atypical teratoid/rhabdoid tumor (C71._) (9508)"
  },
  {
    "code" : "9510",
    "display" : "Retinoblastoma, NOS (C69.2) (9510)"
  },
  {
    "code" : "9511",
    "display" : "Retinoblastoma, differentiated (C69.2) (9511)"
  },
  {
    "code" : "9512",
    "display" : "Retinoblastoma, undifferentiated (C69.2) (9512)"
  },
  {
    "code" : "9513",
    "display" : "Retinoblastoma, diffuse (C69.2) (9513)"
  },
  {
    "code" : "9520",
    "display" : "Olfactory neurogenic tumor (9520)"
  },
  {
    "code" : "9521",
    "display" : "Olfactory neurocytoma (C30.0) (9521)"
  },
  {
    "code" : "9522",
    "display" : "Olfactory neuroblastoma (C30.0) (9522)"
  },
  {
    "code" : "9523",
    "display" : "Olfactory neuroepithelioma (C30.0) (9523)"
  },
  {
    "code" : "9530",
    "display" : "Meningioma, malignant (9530)"
  },
  {
    "code" : "9538",
    "display" : "Papillary meningioma (9538)"
  },
  {
    "code" : "9539",
    "display" : "Meningeal sarcomatosis (9539)"
  },
  {
    "code" : "9540",
    "display" : "Malignant peripheral nerve sheath tumor (9540)"
  },
  {
    "code" : "9542",
    "display" : "Malignant peripheral nerve sheath tumor, epithelioid (9542)"
  },
  {
    "code" : "9560",
    "display" : "Neurilemoma, malignant [obs] (9560)"
  },
  {
    "code" : "9561",
    "display" : "Malignant peripheral nerve sheath tumor with rhabdomyoblastic differentation (9561)"
  },
  {
    "code" : "9563",
    "display" : "Nerve sheath tumor, NOS (9563)"
  },
  {
    "code" : "9571",
    "display" : "Perineurioma, malignant (9571)"
  },
  {
    "code" : "9580",
    "display" : "Granular cell tumor, malignant (9580)"
  },
  {
    "code" : "9581",
    "display" : "Alveolar soft part sarcoma (9581)"
  },
  {
    "code" : "9590",
    "display" : "Malignant lymphoma, NOS (9590)"
  },
  {
    "code" : "9591",
    "display" : "Malignant lymphoma, non-Hodgkin, NOS (9591)"
  },
  {
    "code" : "9596",
    "display" : "Composite Hodgkin and non-Hodgkin lymphoma (9596)"
  },
  {
    "code" : "9597",
    "display" : "Primary cutaneous follicle centre lymphoma (9597)"
  },
  {
    "code" : "9650",
    "display" : "Hodgkin lymphoma, NOS (9650)"
  },
  {
    "code" : "9651",
    "display" : "Hodgkin lymphoma, lymphocyte-rich (9651)"
  },
  {
    "code" : "9652",
    "display" : "Hodgkin lymphoma, mixed cellularity, NOS (9652)"
  },
  {
    "code" : "9653",
    "display" : "Hodgkin lymphoma, lymphocyte depletion, NOS (9653)"
  },
  {
    "code" : "9654",
    "display" : "Hodgkin lymphoma, lymphocyte depletion, diffuse fibrosis (9654)"
  },
  {
    "code" : "9655",
    "display" : "Hodgkin lymphoma, lymphocyte depletion, reticular (9655)"
  },
  {
    "code" : "9659",
    "display" : "Hodgkin lymphoma, nodular lymphocyte predominance (9659)"
  },
  {
    "code" : "9661",
    "display" : "Hodgkin granuloma [obs] (9661)"
  },
  {
    "code" : "9662",
    "display" : "Hodgkin sarcoma [obs] (9662)"
  },
  {
    "code" : "9663",
    "display" : "Hodgkin lymphoma, nodular sclerosis, NOS (9663)"
  },
  {
    "code" : "9664",
    "display" : "Hodgkin lymphoma, nodular sclerosis, cellular phase (9664)"
  },
  {
    "code" : "9665",
    "display" : "Hodgkin lymphoma, nodular sclerosis, grade 1 (9665)"
  },
  {
    "code" : "9667",
    "display" : "Hodgkin lymphoma, nodular sclerosis, grade 2 (9667)"
  },
  {
    "code" : "9670",
    "display" : "Malignant lymphoma, small B lymphocytic, NOS (see also M-9823) (9670)"
  },
  {
    "code" : "9671",
    "display" : "Malignant lymphoma, lymphoplasmacytic (see also M-9761) (9671)"
  },
  {
    "code" : "9673",
    "display" : "Mantle cell lymphoma (Includes all variants: blastic, pleomorphic, small cell) (9673)"
  },
  {
    "code" : "9675",
    "display" : "Malignant lymphoma, mixed small and large cell, diffuse (see also M-9690) [obs] (9675)"
  },
  {
    "code" : "9678",
    "display" : "Primary effusion lymphoma (9678)"
  },
  {
    "code" : "9679",
    "display" : "Mediastinal (thymic) large B-cell lymphoma (C38.3) (9679)"
  },
  {
    "code" : "9680",
    "display" : "Malignant lymphoma, large B-cell, diffuse, NOS (9680)"
  },
  {
    "code" : "9684",
    "display" : "Malignant lymphoma, large B-cell, diffuse, immunoblastic, NOS (9684)"
  },
  {
    "code" : "9687",
    "display" : "Burkitt lymphoma, NOS (Includes all variants, see also M-9826) (9687)"
  },
  {
    "code" : "9688",
    "display" : "T-cell rich large B-cell lymphoma (9688)"
  },
  {
    "code" : "9689",
    "display" : "Splenic marginal zone B-cell lymphoma (C42.2) (9689)"
  },
  {
    "code" : "9690",
    "display" : "Follicular lymphoma, NOS (see also M-9675) (9690)"
  },
  {
    "code" : "9691",
    "display" : "Follicular lymphoma, grade 2 (9691)"
  },
  {
    "code" : "9695",
    "display" : "Follicular lymphoma, grade 1 (9695)"
  },
  {
    "code" : "9698",
    "display" : "Follicular lymphoma, grade 3 (9698)"
  },
  {
    "code" : "9699",
    "display" : "Marginal zone B-cell lymphoma, NOS (9699)"
  },
  {
    "code" : "9700",
    "display" : "Mycosis fungoides (C44._) (9700)"
  },
  {
    "code" : "9701",
    "display" : "Sezary syndrome (9701)"
  },
  {
    "code" : "9702",
    "display" : "Mature T-cell lymphoma, NOS (9702)"
  },
  {
    "code" : "9705",
    "display" : "Angioimmunoblastic T-cell lymphoma (9705)"
  },
  {
    "code" : "9708",
    "display" : "Subcutaneous panniculitis-like T-cell lymphoma (9708)"
  },
  {
    "code" : "9709",
    "display" : "Cutaneous T-cell lymphoma, NOS (C44._) (9709)"
  },
  {
    "code" : "9712",
    "display" : "Intravascular large B-cell lymphoma (C49.9) (9712)"
  },
  {
    "code" : "9714",
    "display" : "Anaplastic large cell lymphoma, T cell and Null cell type (9714)"
  },
  {
    "code" : "9715",
    "display" : "Anaplastic large cell lymphoma, ALK negative (9715)"
  },
  {
    "code" : "9716",
    "display" : "Hepatosplenic T-cell lymphoma (9716)"
  },
  {
    "code" : "9717",
    "display" : "Intestinal T-cell lymphoma (9717)"
  },
  {
    "code" : "9718",
    "display" : "Primary cutaneous CD30+ T-cell lymphoproliferative disorder (C44._) (9718)"
  },
  {
    "code" : "9719",
    "display" : "NK/T-cell lymphoma, nasal and nasal-type (9719)"
  },
  {
    "code" : "9724",
    "display" : "Systemic EBV positive T-cell lymphoproliferative disease of childhood (9724)"
  },
  {
    "code" : "9725",
    "display" : "Hydroa vacciniforme-like lymphoma (9725)"
  },
  {
    "code" : "9726",
    "display" : "Primary cutaneous gamma-delta T-cell lymphoma (9726)"
  },
  {
    "code" : "9727",
    "display" : "Precursor cell lymphoblastic lymphoma, NOS (see also M-9835) (9727)"
  },
  {
    "code" : "9728",
    "display" : "Precursor B-cell lymphoblastic lymphoma (see also M-9836) (9728)"
  },
  {
    "code" : "9729",
    "display" : "Precursor T-cell lymphoblastic lymphoma (see also M-9837) (9729)"
  },
  {
    "code" : "9731",
    "display" : "Plasmacytoma, NOS (9731)"
  },
  {
    "code" : "9732",
    "display" : "Multiple myeloma (C42.1) (9732)"
  },
  {
    "code" : "9733",
    "display" : "Plasma cell leukemia (C42.1) (9733)"
  },
  {
    "code" : "9734",
    "display" : "Plasmacytoma, extramedullary (not occurring in bone) (9734)"
  },
  {
    "code" : "9735",
    "display" : "Plasmablastic lymphoma (9735)"
  },
  {
    "code" : "9737",
    "display" : "ALK positive large B-cell lymphoma (9737)"
  },
  {
    "code" : "9738",
    "display" : "Large B-cell lymphoma arising in HHV8-associated multicentric Castleman disease (9738)"
  },
  {
    "code" : "9740",
    "display" : "Mast cell sarcoma (9740)"
  },
  {
    "code" : "9741",
    "display" : "Malignant mastocytosis (9741)"
  },
  {
    "code" : "9742",
    "display" : "Mast cell leukaemia (C42.1) (9742)"
  },
  {
    "code" : "9749",
    "display" : "Erdheim-Chester disease (9749)"
  },
  {
    "code" : "9750",
    "display" : "Malignant histiocytosis (9750)"
  },
  {
    "code" : "9751",
    "display" : "Langerhans cell histiocytosis, NOS (9751)"
  },
  {
    "code" : "9754",
    "display" : "Langerhans cell histiocytosis, disseminated (use 9751) [obs] (9754)"
  },
  {
    "code" : "9755",
    "display" : "Histiocytic sarcoma (9755)"
  },
  {
    "code" : "9756",
    "display" : "Langerhans cell sarcoma (9756)"
  },
  {
    "code" : "9757",
    "display" : "Interdigitating dendritic cell sarcoma (9757)"
  },
  {
    "code" : "9758",
    "display" : "Follicular dendritic cell sarcoma (9758)"
  },
  {
    "code" : "9759",
    "display" : "Fibroblastic reticular cell tumor (9759)"
  },
  {
    "code" : "9760",
    "display" : "Immunoproliferative disease, NOS (9760)"
  },
  {
    "code" : "9761",
    "display" : "Waldenstrom macroglobulinemia (C42.0) (see also M-9671) (9761)"
  },
  {
    "code" : "9762",
    "display" : "Heavy chain disease, NOS (9762)"
  },
  {
    "code" : "9764",
    "display" : "Immunoproliferative small intestinal disease (C17._) (9764)"
  },
  {
    "code" : "9800",
    "display" : "Leukemia, NOS (9800)"
  },
  {
    "code" : "9801",
    "display" : "Acute leukemia, NOS (9801)"
  },
  {
    "code" : "9805",
    "display" : "Acute biphenotypic leukemia (9805)"
  },
  {
    "code" : "9806",
    "display" : "Mixed phenotype acute leukemia with t(9;22)(q34;q11.2); BCR-ABL1 (9806)"
  },
  {
    "code" : "9807",
    "display" : "Mixed phenotype acute leukemia with t(v;11q23); MLL rearranged (9807)"
  },
  {
    "code" : "9808",
    "display" : "Mixed phenotype acute leukemia, B/myeloid, NOS (9808)"
  },
  {
    "code" : "9809",
    "display" : "Mixed phenotype acute leukemia, T/myeloid, NOS (9809)"
  },
  {
    "code" : "9811",
    "display" : "B lymphoblastic leukemia/lymphoma, NOS (9811)"
  },
  {
    "code" : "9812",
    "display" : "B lymphoblastic leukemia/lymphoma with t(9;22)(q34;q11.2); BCR-ABL1 (9812)"
  },
  {
    "code" : "9813",
    "display" : "B lymphoblastic leukemia/lymphoma with t(v;11q23); MLL rearranged (9813)"
  },
  {
    "code" : "9814",
    "display" : "B lymphoblastic leukemia/lymphoma with t(12;21)(p13;q22); TEL-AML1 (ETV6-RUNX1) (9814)"
  },
  {
    "code" : "9815",
    "display" : "B lymphoblastic leukemia/lymphoma with hyperdiploidy (9815)"
  },
  {
    "code" : "9816",
    "display" : "B lymphoblastic leukemia/lymphoma with hypodiploidy (Hypodiploid ALL) (9816)"
  },
  {
    "code" : "9817",
    "display" : "B lymphoblastic leukemia/lymphoma with t(5;14)(q31;q32); IL3-IGH (9817)"
  },
  {
    "code" : "9818",
    "display" : "B lymphoblastic leukemia/lymphoma with t(1;19)(q23;p13.3); E2A-PBX1 (TCF3-PBX1) (9818)"
  },
  {
    "code" : "9819",
    "display" : "B lymphoblastic leukemia/lymphoma, BCR-ABL1-like (9819)"
  },
  {
    "code" : "9820",
    "display" : "Lymphoid leukemia, NOS (9820)"
  },
  {
    "code" : "9823",
    "display" : "B-cell lymphocytic leukemia/small lymphocytic lymphoma (see also M-9670) (9823)"
  },
  {
    "code" : "9826",
    "display" : "Burkitt cell leukemia (see also M-9687) (9826)"
  },
  {
    "code" : "9827",
    "display" : "Adult T-cell leukemia/lymphoma (HTLV-1 positive) (includes all variants) (9827)"
  },
  {
    "code" : "9831",
    "display" : "T-cell large granular lymphocytic leukemia (9831)"
  },
  {
    "code" : "9832",
    "display" : "Prolymphocytic leukemia, NOS (9832)"
  },
  {
    "code" : "9833",
    "display" : "Prolymphocytic leukemia, B-cell type (9833)"
  },
  {
    "code" : "9834",
    "display" : "Prolymphocytic leukemia, T-cell type (9834)"
  },
  {
    "code" : "9835",
    "display" : "Precursor cell lymphoblastic leukemia, NOS (see also M-9727) (9835)"
  },
  {
    "code" : "9836",
    "display" : "Precursor B-cell lymphoblastic leukemia (see also M-9728) (9836)"
  },
  {
    "code" : "9837",
    "display" : "Precursor T-cell lymphoblastic leukemia (see also M-9729) (9837)"
  },
  {
    "code" : "9840",
    "display" : "Acute myeloid leukemia, M6 type (9840)"
  },
  {
    "code" : "9860",
    "display" : "Myeloid leukemia, NOS (9860)"
  },
  {
    "code" : "9861",
    "display" : "Acute myeloid leukemia, NOS (FAB or WHO type not specified, see also M-9930) (9861)"
  },
  {
    "code" : "9863",
    "display" : "Chronic myeloid leukemia, NOS (9863)"
  },
  {
    "code" : "9865",
    "display" : "Acute myeloid leukemia with t(6;9)(p23;q34); DEK-NUP214 (9865)"
  },
  {
    "code" : "9866",
    "display" : "Acute promyelocytic leukaemia, t(15;17)(q22;q11-12) (9866)"
  },
  {
    "code" : "9867",
    "display" : "Acute myelomonocytic leukemia (9867)"
  },
  {
    "code" : "9869",
    "display" : "Acute myeloid leukemia with inv(3)(q21q26.2) or t(3;3)(q21;q26.2); RPN1-EVI1 (9869)"
  },
  {
    "code" : "9870",
    "display" : "Acute basophilic leukaemia (9870)"
  },
  {
    "code" : "9871",
    "display" : "Acute myeloid leukemia with abnormal marrow eosinophils (includes all variants) (9871)"
  },
  {
    "code" : "9872",
    "display" : "Acute myeloid leukemia, minimal differentiation (9872)"
  },
  {
    "code" : "9873",
    "display" : "Acute myeloid leukemia without maturation (9873)"
  },
  {
    "code" : "9874",
    "display" : "Acute myeloid leukemia with maturation (9874)"
  },
  {
    "code" : "9875",
    "display" : "Chronic myelogenous leukemia, BCR-ABL positive (9875)"
  },
  {
    "code" : "9876",
    "display" : "Atypical chronic myeloid leukemia, BCR/ABL negative (9876)"
  },
  {
    "code" : "9877",
    "display" : "Acute myeloid leukemia with mutated NPM1 (9877)"
  },
  {
    "code" : "9878",
    "display" : "Acute myeloid leukemia with biallelic mutation of CEBPA (9878)"
  },
  {
    "code" : "9879",
    "display" : "Acute myeloid leukemia with mutated RUNX1 (9879)"
  },
  {
    "code" : "9891",
    "display" : "Acute monocytic leukemia (9891)"
  },
  {
    "code" : "9895",
    "display" : "Acute myeloid leukemia with myelodysplasia-related changes (9895)"
  },
  {
    "code" : "9896",
    "display" : "Acute myeloid leukaemia, t(8;21)(q22;q22) (9896)"
  },
  {
    "code" : "9897",
    "display" : "Acute myloid leukemia, 11q23 abnormalities (9897)"
  },
  {
    "code" : "9898",
    "display" : "Myeloid leukemia associated with Down Syndrome (9898)"
  },
  {
    "code" : "9910",
    "display" : "Acute megakaryoblastic leukaemia (9910)"
  },
  {
    "code" : "9911",
    "display" : "Acute myeloid leukemia (megakaryoblastic) with t(1;22)(p13;q13); RBM15-MKL1 (9911)"
  },
  {
    "code" : "9912",
    "display" : "Acute myleoid leukemia with BCR-ABL1 (9912)"
  },
  {
    "code" : "9920",
    "display" : "Therapy related myeloid neoplasm (9920)"
  },
  {
    "code" : "9930",
    "display" : "Myeloid sarcoma (see also M-9861) (9930)"
  },
  {
    "code" : "9931",
    "display" : "Acute panmyelosis with myelofibrosis (C42.1) (9931)"
  },
  {
    "code" : "9940",
    "display" : "Hairy cell leukemia (C42.1) (9940)"
  },
  {
    "code" : "9945",
    "display" : "Chronic myelomonocytic leukemia, NOS (9945)"
  },
  {
    "code" : "9946",
    "display" : "Juvenile myelomonocytic leukemia (9946)"
  },
  {
    "code" : "9948",
    "display" : "Aggressive NK-cell leukaemia (9948)"
  },
  {
    "code" : "9950",
    "display" : "Polycythemia vera (9950)"
  },
  {
    "code" : "9960",
    "display" : "Myeloproliferative neoplasm, NOS (9960)"
  },
  {
    "code" : "9961",
    "display" : "Primary myelofibrosis (9961)"
  },
  {
    "code" : "9962",
    "display" : "Essential thrombocythemia (9962)"
  },
  {
    "code" : "9963",
    "display" : "Chronic neutrophilic leukemia (9963)"
  },
  {
    "code" : "9964",
    "display" : "Chronic eosinophilic leukemia, NOS (9964)"
  },
  {
    "code" : "9965",
    "display" : "Myeloid and lymphoid neoplasms with PDGFRA rearrangement (9965)"
  },
  {
    "code" : "9966",
    "display" : "Myeloid neoplasms with PDGFRB rearrangement (9966)"
  },
  {
    "code" : "9967",
    "display" : "Myeloid and lymphoid neoplasms with FGFR1 abnormalities (9967)"
  },
  {
    "code" : "9968",
    "display" : "Myeloid or lymphoid neoplasm with PCM1-JAK2 (9968)"
  },
  {
    "code" : "9971",
    "display" : "Polymorphic post transplant lymphoproliferative disorder (9971)"
  },
  {
    "code" : "9975",
    "display" : "Myloproliferative neoplasm, unclassifiable (9975)"
  },
  {
    "code" : "9980",
    "display" : "Refractory anemia (9980)"
  },
  {
    "code" : "9982",
    "display" : "Refractory anemia with sideroblasts (9982)"
  },
  {
    "code" : "9983",
    "display" : "Refractory anemia with excess blasts (9983)"
  },
  {
    "code" : "9984",
    "display" : "Refractory anemia with excess blasts in transformation [obs] (9984)"
  },
  {
    "code" : "9985",
    "display" : "Refractory cytopenia with multilineage dysplasia (9985)"
  },
  {
    "code" : "9986",
    "display" : "Myelodysplastic syndrome with 5q deletion (5q-) syndrome (9986)"
  },
  {
    "code" : "9987",
    "display" : "Therapy-related myelodysplastic syndrome, NOS (9987)"
  },
  {
    "code" : "9989",
    "display" : "Myelodysplastic syndrome, NOS (9989)"
  },
  {
    "code" : "9991",
    "display" : "Refractory neutropenia (9991)"
  },
  {
    "code" : "9992",
    "display" : "Refractory thrombocytopenia (9992)"
  },
  {
    "code" : "9993",
    "display" : "Myelodysplastic syndrome with ring sideroblasts and multilineage dysplasia (9993)"
  }]
}

```
