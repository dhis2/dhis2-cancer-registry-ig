# CR - Topography - DHIS2 Cancer Registry Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **CR - Topography**

## CodeSystem: CR - Topography 

| | |
| :--- | :--- |
| *Official URL*:https://dhis2.org/fhir/cancer-registry/CodeSystem/CRTopographyCS | *Version*:0.1.0 |
| Draft as of 2026-04-10 | *Computable Name*:CRTopographyCS |

 
ICD-O-3 topography codes mapped from the CanReg5 topography dictionary (topography.tsv). These codes represent the anatomical site of the tumour origin. The topography field is implemented as a dependent dropdown list filtered by the selected Site. Codes must not be modified as they are mapped directly to CanReg5 standards and used in multiple data quality checks. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [CRTopographyVS](ValueSet-CRTopographyVS.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "CRTopographyCS",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/uv/crmi/StructureDefinition/crmi-shareablecodesystem",
    "http://hl7.org/fhir/uv/crmi/StructureDefinition/crmi-publishablecodesystem"]
  },
  "url" : "https://dhis2.org/fhir/cancer-registry/CodeSystem/CRTopographyCS",
  "version" : "0.1.0",
  "name" : "CRTopographyCS",
  "title" : "CR - Topography",
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
  "description" : "ICD-O-3 topography codes mapped from the CanReg5 topography dictionary (topography.tsv). These codes represent the anatomical site of the tumour origin. The topography field is implemented as a dependent dropdown list filtered by the selected Site. Codes must not be modified as they are mapped directly to CanReg5 standards and used in multiple data quality checks.",
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 331,
  "concept" : [{
    "code" : "0",
    "display" : "External upper lip (000)"
  },
  {
    "code" : "1",
    "display" : "External lower lip (001)"
  },
  {
    "code" : "2",
    "display" : "External lip, NOS (002)"
  },
  {
    "code" : "3",
    "display" : "Mucosa of upper lip (003)"
  },
  {
    "code" : "4",
    "display" : "Mucosa of lower lip (004)"
  },
  {
    "code" : "5",
    "display" : "Mucosa of lip, NOS (005)"
  },
  {
    "code" : "6",
    "display" : "Commissure of lip (006)"
  },
  {
    "code" : "8",
    "display" : "Overlapping lesion of lip (008)"
  },
  {
    "code" : "9",
    "display" : "Lip, NOS (009)"
  },
  {
    "code" : "19",
    "display" : "Base of tongue, NOS (019)"
  },
  {
    "code" : "20",
    "display" : "Dorsal surface of tongue, NOS (020)"
  },
  {
    "code" : "21",
    "display" : "Border of tongue (021)"
  },
  {
    "code" : "22",
    "display" : "Ventral surface of tongue, NOS (022)"
  },
  {
    "code" : "23",
    "display" : "Anterior 2/3 of tongue, NOS (023)"
  },
  {
    "code" : "24",
    "display" : "Lingual tonsil (024)"
  },
  {
    "code" : "28",
    "display" : "Overlapping lesion of tongue (028)"
  },
  {
    "code" : "29",
    "display" : "Tongue, NOS (029)"
  },
  {
    "code" : "30",
    "display" : "Upper Gum (030)"
  },
  {
    "code" : "31",
    "display" : "Lower gum (031)"
  },
  {
    "code" : "39",
    "display" : "Gum, NOS (039)"
  },
  {
    "code" : "40",
    "display" : "Anterior floor of mouth (040)"
  },
  {
    "code" : "41",
    "display" : "Lateral floor of mouth (041)"
  },
  {
    "code" : "48",
    "display" : "Overlapping lesion of floor of mouth (048)"
  },
  {
    "code" : "49",
    "display" : "Floor of mouth, NOS (049)"
  },
  {
    "code" : "50",
    "display" : "Hard palate (050)"
  },
  {
    "code" : "51",
    "display" : "Soft palate, NOS (051)"
  },
  {
    "code" : "52",
    "display" : "Uvula (052)"
  },
  {
    "code" : "58",
    "display" : "Overlapping lesion of palate (058)"
  },
  {
    "code" : "59",
    "display" : "Palate, NOS (059)"
  },
  {
    "code" : "60",
    "display" : "Cheeck mucosa (060)"
  },
  {
    "code" : "61",
    "display" : "Vestibule of mouth (061)"
  },
  {
    "code" : "62",
    "display" : "Retromolar area (062)"
  },
  {
    "code" : "68",
    "display" : "Overlapping lesion of other and unspecified parts of mouth (068)"
  },
  {
    "code" : "69",
    "display" : "Mouth, NOS (069)"
  },
  {
    "code" : "79",
    "display" : "Parotid gland (079)"
  },
  {
    "code" : "80",
    "display" : "Submandibular gland (080)"
  },
  {
    "code" : "81",
    "display" : "Sublingual gland (081)"
  },
  {
    "code" : "88",
    "display" : "Overlapping lesion of major salivary glands (088)"
  },
  {
    "code" : "89",
    "display" : "Major salivary gland, NOS (089)"
  },
  {
    "code" : "90",
    "display" : "Tonsillar fossa (090)"
  },
  {
    "code" : "91",
    "display" : "Tonsillar pillar (091)"
  },
  {
    "code" : "98",
    "display" : "Overlapping lesion of tonsil (098)"
  },
  {
    "code" : "99",
    "display" : "Tonsil, NOS (099)"
  },
  {
    "code" : "100",
    "display" : "Vallecula (100)"
  },
  {
    "code" : "101",
    "display" : "Anterior surface of epiglottis (101)"
  },
  {
    "code" : "102",
    "display" : "Lateral wall of oropharynx (102)"
  },
  {
    "code" : "103",
    "display" : "Posterior wall of oropharynx (103)"
  },
  {
    "code" : "104",
    "display" : "Branchial cleft (104)"
  },
  {
    "code" : "108",
    "display" : "Overlapping lesions of oropharynx (108)"
  },
  {
    "code" : "109",
    "display" : "Oropharynx, NOS (109)"
  },
  {
    "code" : "110",
    "display" : "Superior wall of nasopharynx (110)"
  },
  {
    "code" : "111",
    "display" : "Posterior wall of nasopharynx (111)"
  },
  {
    "code" : "112",
    "display" : "Lateral wall of nasopharynx (112)"
  },
  {
    "code" : "113",
    "display" : "Anterior wall of nasopharynx (113)"
  },
  {
    "code" : "118",
    "display" : "Overlapping lesion of nasopharynx (118)"
  },
  {
    "code" : "119",
    "display" : "Nasopharynx, NOS (119)"
  },
  {
    "code" : "129",
    "display" : "Pyriform sinus (129)"
  },
  {
    "code" : "130",
    "display" : "Postcricoid region (130)"
  },
  {
    "code" : "131",
    "display" : "Hypopharyngeal aspect of aryepiglottic fold (131)"
  },
  {
    "code" : "132",
    "display" : "Posterior wall of hypopharynx (132)"
  },
  {
    "code" : "138",
    "display" : "Overlapping lesion of hypopharynx (138)"
  },
  {
    "code" : "139",
    "display" : "Hypopharynx, NOS (139)"
  },
  {
    "code" : "140",
    "display" : "Pharynx, NOS (140)"
  },
  {
    "code" : "141",
    "display" : "Laryngopharynx (OLD CODE) (141)"
  },
  {
    "code" : "142",
    "display" : "Waldeyer ring (142)"
  },
  {
    "code" : "148",
    "display" : "Overlapping lesion of lip, oral cavity and pharynx (148)"
  },
  {
    "code" : "150",
    "display" : "Cervical esophagus (150)"
  },
  {
    "code" : "151",
    "display" : "Thoracic esophagus (151)"
  },
  {
    "code" : "152",
    "display" : "Abdominal esophagus (152)"
  },
  {
    "code" : "153",
    "display" : "Upper third of esophagus (153)"
  },
  {
    "code" : "154",
    "display" : "Middle third of esophagus (154)"
  },
  {
    "code" : "155",
    "display" : "Lower third of esophagus (155)"
  },
  {
    "code" : "158",
    "display" : "Overlapping lesion of esophagus (158)"
  },
  {
    "code" : "159",
    "display" : "Esophagus, NOS (159)"
  },
  {
    "code" : "160",
    "display" : "Cardia, NOS (160)"
  },
  {
    "code" : "161",
    "display" : "Fundus of stomach (161)"
  },
  {
    "code" : "162",
    "display" : "Body of stomach (162)"
  },
  {
    "code" : "163",
    "display" : "Gastric antrum (163)"
  },
  {
    "code" : "164",
    "display" : "Pylorus (164)"
  },
  {
    "code" : "165",
    "display" : "Lesser curvature of stomach, NOS (165)"
  },
  {
    "code" : "166",
    "display" : "Greater curvature of stomach, NOS (166)"
  },
  {
    "code" : "168",
    "display" : "Overlapping lesion of stomach (168)"
  },
  {
    "code" : "169",
    "display" : "Stomach, NOS (169)"
  },
  {
    "code" : "170",
    "display" : "Duodenum (170)"
  },
  {
    "code" : "171",
    "display" : "Jejunum (171)"
  },
  {
    "code" : "172",
    "display" : "Ileum (172)"
  },
  {
    "code" : "173",
    "display" : "Meckel diverticulum (173)"
  },
  {
    "code" : "178",
    "display" : "Overlapping lesion of small intestine (178)"
  },
  {
    "code" : "179",
    "display" : "Small intestine, NOS (179)"
  },
  {
    "code" : "180",
    "display" : "Cecum (180)"
  },
  {
    "code" : "181",
    "display" : "Appendix (181)"
  },
  {
    "code" : "182",
    "display" : "Ascending colon (182)"
  },
  {
    "code" : "183",
    "display" : "Hepatic flexure of colon (183)"
  },
  {
    "code" : "184",
    "display" : "Transverse colon (184)"
  },
  {
    "code" : "185",
    "display" : "Splenic flexure of colon (185)"
  },
  {
    "code" : "186",
    "display" : "Descending colon (186)"
  },
  {
    "code" : "187",
    "display" : "Sigmoid colon (187)"
  },
  {
    "code" : "188",
    "display" : "Overlapping lesion of colon (188)"
  },
  {
    "code" : "189",
    "display" : "Colon, NOS (189)"
  },
  {
    "code" : "199",
    "display" : "Rectosigmoid junction (199)"
  },
  {
    "code" : "209",
    "display" : "Rectum, NOS (209)"
  },
  {
    "code" : "210",
    "display" : "Anus, NOS (210)"
  },
  {
    "code" : "211",
    "display" : "Anal canal (211)"
  },
  {
    "code" : "212",
    "display" : "Cloacogenic zone (212)"
  },
  {
    "code" : "218",
    "display" : "Overlapping lesion of rectum, anus and anal canal (218)"
  },
  {
    "code" : "220",
    "display" : "Liver (220)"
  },
  {
    "code" : "221",
    "display" : "intrahepatic bile duct (221)"
  },
  {
    "code" : "239",
    "display" : "Gallbladder (239)"
  },
  {
    "code" : "240",
    "display" : "Extrahepatic bile duct (240)"
  },
  {
    "code" : "241",
    "display" : "Ampulla of Vater (241)"
  },
  {
    "code" : "248",
    "display" : "Overlapping lesion of billiary tract (248)"
  },
  {
    "code" : "249",
    "display" : "Billiary tract, NOS (249)"
  },
  {
    "code" : "250",
    "display" : "Head of pancreas (250)"
  },
  {
    "code" : "251",
    "display" : "Body of pancreas (251)"
  },
  {
    "code" : "252",
    "display" : "Tail of pancreas (252)"
  },
  {
    "code" : "253",
    "display" : "Pancreatic duct (253)"
  },
  {
    "code" : "254",
    "display" : "Islets of Langerhans (254)"
  },
  {
    "code" : "257",
    "display" : "Other specified parts of pancreas (257)"
  },
  {
    "code" : "258",
    "display" : "Overlapping lesion of pancreas (258)"
  },
  {
    "code" : "259",
    "display" : "Pancreas, NOS (259)"
  },
  {
    "code" : "260",
    "display" : "Intestinal tract, NOS (260)"
  },
  {
    "code" : "268",
    "display" : "Overlapping lesion of digestive system (268)"
  },
  {
    "code" : "269",
    "display" : "Gastrointestinal tract, NOS (269)"
  },
  {
    "code" : "300",
    "display" : "Nasal cavity (300)"
  },
  {
    "code" : "301",
    "display" : "Middle ear (301)"
  },
  {
    "code" : "310",
    "display" : "Maxillary sinus (310)"
  },
  {
    "code" : "311",
    "display" : "Ethmoid sinus (311)"
  },
  {
    "code" : "312",
    "display" : "Frontal sinus (312)"
  },
  {
    "code" : "313",
    "display" : "Sphenoid sinus (313)"
  },
  {
    "code" : "318",
    "display" : "Overlapping lesion of accessory sinuses (318)"
  },
  {
    "code" : "319",
    "display" : "Accessory sinus, NOS (319)"
  },
  {
    "code" : "320",
    "display" : "Glottis (320)"
  },
  {
    "code" : "321",
    "display" : "Supraglottis (321)"
  },
  {
    "code" : "322",
    "display" : "Subglottis (322)"
  },
  {
    "code" : "323",
    "display" : "Laryngeal cartilage (323)"
  },
  {
    "code" : "328",
    "display" : "Overlapping lesion of larynx (328)"
  },
  {
    "code" : "329",
    "display" : "Larynx, NOS (329)"
  },
  {
    "code" : "339",
    "display" : "Trachea (339)"
  },
  {
    "code" : "340",
    "display" : "Main bronchus (340)"
  },
  {
    "code" : "341",
    "display" : "Upper lobe, lung (341)"
  },
  {
    "code" : "342",
    "display" : "Middle lobe, lung (342)"
  },
  {
    "code" : "343",
    "display" : "Lower lobe, lung (343)"
  },
  {
    "code" : "348",
    "display" : "Overlapping lesion of lung (348)"
  },
  {
    "code" : "349",
    "display" : "Lung, NOS (349)"
  },
  {
    "code" : "379",
    "display" : "Thymus (379)"
  },
  {
    "code" : "380",
    "display" : "Heart (380)"
  },
  {
    "code" : "381",
    "display" : "Anterior mediastinum (381)"
  },
  {
    "code" : "382",
    "display" : "Posterior mediastinum (382)"
  },
  {
    "code" : "383",
    "display" : "Mediastinum, NOS (383)"
  },
  {
    "code" : "384",
    "display" : "Pleura, NOS (384)"
  },
  {
    "code" : "388",
    "display" : "Overlapping lesion of heart, mediastinum and pleura (388)"
  },
  {
    "code" : "390",
    "display" : "Upper respiratory tract, NOS (390)"
  },
  {
    "code" : "398",
    "display" : "Overlapping lesion of respiratory system and intrathoracic organs (398)"
  },
  {
    "code" : "399",
    "display" : "Ill-defined sites within respiratory system (399)"
  },
  {
    "code" : "400",
    "display" : "Long bones of upper limb, scapula and associated joints (400)"
  },
  {
    "code" : "401",
    "display" : "Short bones of upper limb and associated joints (401)"
  },
  {
    "code" : "402",
    "display" : "Long bones of lower limb and associated joints (402)"
  },
  {
    "code" : "403",
    "display" : "Short bones of lower limb and associated joints (403)"
  },
  {
    "code" : "408",
    "display" : "Overlapping lesion of bones, joints and articular cartilage of limbs (408)"
  },
  {
    "code" : "409",
    "display" : "Bone of limb, NOS (409)"
  },
  {
    "code" : "410",
    "display" : "Bones of skull and face and associated joints (410)"
  },
  {
    "code" : "411",
    "display" : "Mandible (411)"
  },
  {
    "code" : "412",
    "display" : "Vertebral column (412)"
  },
  {
    "code" : "413",
    "display" : "Rib, sternum, clavicle and associated joints (413)"
  },
  {
    "code" : "414",
    "display" : "Pelvic bones, sacrum, coccyx and associated joints (414)"
  },
  {
    "code" : "418",
    "display" : "Overlapping lesion of bones, joints and articular cartilage (418)"
  },
  {
    "code" : "419",
    "display" : "Bone, NOS (419)"
  },
  {
    "code" : "420",
    "display" : "Blood (420)"
  },
  {
    "code" : "421",
    "display" : "Bone marrow (421)"
  },
  {
    "code" : "422",
    "display" : "Spleen (422)"
  },
  {
    "code" : "423",
    "display" : "Reticuloendothelial system, NOS (423)"
  },
  {
    "code" : "424",
    "display" : "Hematopoietic system, NOS (424)"
  },
  {
    "code" : "440",
    "display" : "Skin of lip, NOS (440)"
  },
  {
    "code" : "441",
    "display" : "Eyelid (441)"
  },
  {
    "code" : "442",
    "display" : "External ear (442)"
  },
  {
    "code" : "443",
    "display" : "Skin of other and unspecified parts of face (443)"
  },
  {
    "code" : "444",
    "display" : "Skin of scalp and neck (444)"
  },
  {
    "code" : "445",
    "display" : "Skin of trunk (445)"
  },
  {
    "code" : "446",
    "display" : "Skin of upper limb and shoulder (446)"
  },
  {
    "code" : "447",
    "display" : "Skin of lower limb and hip (447)"
  },
  {
    "code" : "448",
    "display" : "Overlapping lesion of skin (448)"
  },
  {
    "code" : "449",
    "display" : "Skin, NOS (449)"
  },
  {
    "code" : "470",
    "display" : "Peripheral nerves and autonomic nervous system of head, face, and neck (470)"
  },
  {
    "code" : "471",
    "display" : "Peripheral nerves and autonomic nervous system of upper limb and shoulder (471)"
  },
  {
    "code" : "472",
    "display" : "Peripheral nerves and autonomic nervous system of lower limb and hip (472)"
  },
  {
    "code" : "473",
    "display" : "Peripheral nerves and autonomic nervous system of thorax (473)"
  },
  {
    "code" : "474",
    "display" : "Peripheral nerves and autonomic nervous system of abdomen (474)"
  },
  {
    "code" : "475",
    "display" : "Peripheral nerves and autonomic nervous system of pelvis (475)"
  },
  {
    "code" : "476",
    "display" : "Peripheral nerves and autonomic nervous system of trunk, NOS (476)"
  },
  {
    "code" : "478",
    "display" : "Overlapping lesion of peripheral nerves and autonomic nervous system (478)"
  },
  {
    "code" : "479",
    "display" : "Autonomic nervous system, NOS (479)"
  },
  {
    "code" : "480",
    "display" : "Retroperitoneum (480)"
  },
  {
    "code" : "481",
    "display" : "Specified parts of peritoneum (481)"
  },
  {
    "code" : "482",
    "display" : "Peritoneum, NOS (482)"
  },
  {
    "code" : "488",
    "display" : "Overlapping lesion of retroperitoneum and peritoneum (488)"
  },
  {
    "code" : "490",
    "display" : "Connective, Subcutaneous and other soft tissues of head, face, and neck (490)"
  },
  {
    "code" : "491",
    "display" : "Connective, Subcutaneous and other soft tissues of upper limb and shoulder (491)"
  },
  {
    "code" : "492",
    "display" : "Connective, Subcutaneous and other soft tissues of lower limb and hip (492)"
  },
  {
    "code" : "493",
    "display" : "Connective, Subcutaneous and other soft tissues of thorax (493)"
  },
  {
    "code" : "494",
    "display" : "Connective, Subcutaneous and other soft tissues of abdomen (494)"
  },
  {
    "code" : "495",
    "display" : "Connective, Subcutaneous and other soft tissues of pelvis (495)"
  },
  {
    "code" : "496",
    "display" : "Connective, Subcutaneous and other soft tissues of trunk, NOS (496)"
  },
  {
    "code" : "498",
    "display" : "Overlapping lesion of connective, subcutaneous and other soft tissues (498)"
  },
  {
    "code" : "499",
    "display" : "Connective, Subcutaneous and other soft tissues, NOS (499)"
  },
  {
    "code" : "500",
    "display" : "Nipple (500)"
  },
  {
    "code" : "501",
    "display" : "Central portion of breast (501)"
  },
  {
    "code" : "502",
    "display" : "Upper-inner quadrant of breast (502)"
  },
  {
    "code" : "503",
    "display" : "Lower-inner quadrant of breast (503)"
  },
  {
    "code" : "504",
    "display" : "Upper-outer quadrant of breast (504)"
  },
  {
    "code" : "505",
    "display" : "Lower-outer quadrant of breast (505)"
  },
  {
    "code" : "506",
    "display" : "Axillary tail of breast (506)"
  },
  {
    "code" : "508",
    "display" : "Overlapping lesion of breast (508)"
  },
  {
    "code" : "509",
    "display" : "Breast, NOS (509)"
  },
  {
    "code" : "510",
    "display" : "Labium majus (510)"
  },
  {
    "code" : "511",
    "display" : "Labium minus (511)"
  },
  {
    "code" : "512",
    "display" : "Clitorus (512)"
  },
  {
    "code" : "518",
    "display" : "Overlapping lesion of vulva (518)"
  },
  {
    "code" : "519",
    "display" : "Vulva, NOS (519)"
  },
  {
    "code" : "529",
    "display" : "Vagina, NOS (529)"
  },
  {
    "code" : "530",
    "display" : "Endocervix (530)"
  },
  {
    "code" : "531",
    "display" : "Exocervix (531)"
  },
  {
    "code" : "538",
    "display" : "Overlapping lesion of cervix uteri (538)"
  },
  {
    "code" : "539",
    "display" : "Cervix uteri (539)"
  },
  {
    "code" : "540",
    "display" : "Isthmus uteri (540)"
  },
  {
    "code" : "541",
    "display" : "Endometrium (541)"
  },
  {
    "code" : "542",
    "display" : "Myometrium (542)"
  },
  {
    "code" : "543",
    "display" : "Fundus uteri (543)"
  },
  {
    "code" : "548",
    "display" : "Overlapping lesion of corpus uteri (548)"
  },
  {
    "code" : "549",
    "display" : "Corpus uteri (549)"
  },
  {
    "code" : "559",
    "display" : "Uterus, NOS (559)"
  },
  {
    "code" : "569",
    "display" : "Ovary (569)"
  },
  {
    "code" : "570",
    "display" : "Fallopian tube (570)"
  },
  {
    "code" : "571",
    "display" : "Broad ligament (571)"
  },
  {
    "code" : "572",
    "display" : "Round ligament (572)"
  },
  {
    "code" : "573",
    "display" : "Parametrium (573)"
  },
  {
    "code" : "574",
    "display" : "Uterine adnexa (574)"
  },
  {
    "code" : "577",
    "display" : "Other specified parts of female genital organs (577)"
  },
  {
    "code" : "578",
    "display" : "Overlapping lesion of female genital organs (578)"
  },
  {
    "code" : "579",
    "display" : "Female genital tract, NOS (579)"
  },
  {
    "code" : "589",
    "display" : "Placenta (589)"
  },
  {
    "code" : "600",
    "display" : "Prepuce (600)"
  },
  {
    "code" : "601",
    "display" : "Glans penis (601)"
  },
  {
    "code" : "602",
    "display" : "Body of penis (602)"
  },
  {
    "code" : "608",
    "display" : "Overlapping lesion of penis (608)"
  },
  {
    "code" : "609",
    "display" : "Penis, NOS (609)"
  },
  {
    "code" : "619",
    "display" : "Prostate gland (619)"
  },
  {
    "code" : "620",
    "display" : "Undescended testis (620)"
  },
  {
    "code" : "621",
    "display" : "Descended testis (621)"
  },
  {
    "code" : "629",
    "display" : "Testis, NOS (629)"
  },
  {
    "code" : "630",
    "display" : "Epididymis (630)"
  },
  {
    "code" : "631",
    "display" : "Spermatic cord (631)"
  },
  {
    "code" : "632",
    "display" : "Scrotum, NOS (632)"
  },
  {
    "code" : "637",
    "display" : "Other specified parts of male genital organs (637)"
  },
  {
    "code" : "638",
    "display" : "Overlapping lesion of male genital organs (638)"
  },
  {
    "code" : "639",
    "display" : "Male genital organs, NOS (639)"
  },
  {
    "code" : "649",
    "display" : "Kidney, NOS (649)"
  },
  {
    "code" : "659",
    "display" : "Renal pelvis (659)"
  },
  {
    "code" : "669",
    "display" : "Ureter (669)"
  },
  {
    "code" : "670",
    "display" : "Trigone of bladder (670)"
  },
  {
    "code" : "671",
    "display" : "Dome of bladder (671)"
  },
  {
    "code" : "672",
    "display" : "Lateral wall of bladder (672)"
  },
  {
    "code" : "673",
    "display" : "Anterior wall of bladder (673)"
  },
  {
    "code" : "674",
    "display" : "Posterior wall of bladder (674)"
  },
  {
    "code" : "675",
    "display" : "Bladder neck (675)"
  },
  {
    "code" : "676",
    "display" : "Ureteric orifice (676)"
  },
  {
    "code" : "677",
    "display" : "Urachus (677)"
  },
  {
    "code" : "678",
    "display" : "Overlapping lesion of bladder (678)"
  },
  {
    "code" : "679",
    "display" : "Bladder, NOS (679)"
  },
  {
    "code" : "680",
    "display" : "Urethra (680)"
  },
  {
    "code" : "681",
    "display" : "Paraurethral gland (681)"
  },
  {
    "code" : "688",
    "display" : "Overlapping lesion of urinary organs (688)"
  },
  {
    "code" : "689",
    "display" : "Urinary system, NOS (689)"
  },
  {
    "code" : "690",
    "display" : "Conjunctiva (690)"
  },
  {
    "code" : "691",
    "display" : "Cornea, NOS (691)"
  },
  {
    "code" : "692",
    "display" : "Retina (692)"
  },
  {
    "code" : "693",
    "display" : "Choroid (693)"
  },
  {
    "code" : "694",
    "display" : "Ciliary body (694)"
  },
  {
    "code" : "695",
    "display" : "Lacrimal gland (695)"
  },
  {
    "code" : "696",
    "display" : "Orbit, NOS (696)"
  },
  {
    "code" : "698",
    "display" : "Overlapping lesion of eye and adnexa (698)"
  },
  {
    "code" : "699",
    "display" : "Eye, NOS (699)"
  },
  {
    "code" : "700",
    "display" : "Cerebral meninges (700)"
  },
  {
    "code" : "701",
    "display" : "Spinal meninges (701)"
  },
  {
    "code" : "709",
    "display" : "Meninges, NOS (709)"
  },
  {
    "code" : "710",
    "display" : "Cerebrum (710)"
  },
  {
    "code" : "711",
    "display" : "Frontal lobe (711)"
  },
  {
    "code" : "712",
    "display" : "Temporal lobe (712)"
  },
  {
    "code" : "713",
    "display" : "Parietal lobe (713)"
  },
  {
    "code" : "714",
    "display" : "Occipital lobe (714)"
  },
  {
    "code" : "715",
    "display" : "Ventricle, NOS (715)"
  },
  {
    "code" : "716",
    "display" : "Cerebellum, NOS (716)"
  },
  {
    "code" : "717",
    "display" : "Brain stem (717)"
  },
  {
    "code" : "718",
    "display" : "Overlapping lesion of brain (718)"
  },
  {
    "code" : "719",
    "display" : "Brain, NOS (719)"
  },
  {
    "code" : "720",
    "display" : "Spinal cord (720)"
  },
  {
    "code" : "721",
    "display" : "Cauda equina (721)"
  },
  {
    "code" : "722",
    "display" : "Olfactory nerve (722)"
  },
  {
    "code" : "723",
    "display" : "Optic nerve (723)"
  },
  {
    "code" : "724",
    "display" : "Acoustic nerve (724)"
  },
  {
    "code" : "725",
    "display" : "Cranial nerve, NOS (725)"
  },
  {
    "code" : "728",
    "display" : "Overlapping lesion of brain and central nervous system (728)"
  },
  {
    "code" : "729",
    "display" : "Nervous system, NOS (729)"
  },
  {
    "code" : "739",
    "display" : "Thyroid gland (739)"
  },
  {
    "code" : "740",
    "display" : "Cortex of adrenal gland (740)"
  },
  {
    "code" : "741",
    "display" : "Medulla of adrenal gland (741)"
  },
  {
    "code" : "749",
    "display" : "Adrenal gland, NOS (749)"
  },
  {
    "code" : "750",
    "display" : "Parathyroid gland (750)"
  },
  {
    "code" : "751",
    "display" : "Pituitary gland (751)"
  },
  {
    "code" : "752",
    "display" : "Craniopharyngeal duct (752)"
  },
  {
    "code" : "753",
    "display" : "Pineal gland (753)"
  },
  {
    "code" : "754",
    "display" : "Carotid body (754)"
  },
  {
    "code" : "755",
    "display" : "Aortic body and other paraganglia (755)"
  },
  {
    "code" : "758",
    "display" : "Overlapping lesion of endocrine glands and related structures (758)"
  },
  {
    "code" : "759",
    "display" : "Endocrine gland, NOS (759)"
  },
  {
    "code" : "760",
    "display" : "Head, face or neck, NOS (760)"
  },
  {
    "code" : "761",
    "display" : "Thorax, NOS (761)"
  },
  {
    "code" : "762",
    "display" : "Abdomen, NOS (762)"
  },
  {
    "code" : "763",
    "display" : "Pelvis, NOS (763)"
  },
  {
    "code" : "764",
    "display" : "Upper limb, NOS (764)"
  },
  {
    "code" : "765",
    "display" : "Lower limb, NOS (765)"
  },
  {
    "code" : "767",
    "display" : "Other ill-defined sites (767)"
  },
  {
    "code" : "768",
    "display" : "Overlapping lesion of ill-defined sites (768)"
  },
  {
    "code" : "770",
    "display" : "Lymph nodes of head, face and neck (770)"
  },
  {
    "code" : "771",
    "display" : "Intrathoracic lymph nodes (771)"
  },
  {
    "code" : "772",
    "display" : "Intra-abdominal lymph nodes (772)"
  },
  {
    "code" : "773",
    "display" : "Lymph nodes of axilla or arm (773)"
  },
  {
    "code" : "774",
    "display" : "Lymph nodes of inguinal region or leg (774)"
  },
  {
    "code" : "775",
    "display" : "Pelvic lymph nodes (775)"
  },
  {
    "code" : "778",
    "display" : "Lymph nodes of multiple regions (778)"
  },
  {
    "code" : "779",
    "display" : "Lymph node, NOS (779)"
  },
  {
    "code" : "809",
    "display" : "Unknown primary site (809)"
  }]
}

```
