# Tumor Questionnaire - DHIS2 Cancer Registry Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Tumor Questionnaire**

## Questionnaire: Tumor Questionnaire
Branch:



## Resource Content

```json
{
  "resourceType" : "Questionnaire",
  "id" : "TumorQuestionnaire",
  "contained" : [{
    "resourceType" : "ValueSet",
    "id" : "CRAddressVS",
    "meta" : {
      "profile" : ["http://hl7.org/fhir/uv/crmi/StructureDefinition/crmi-shareablevalueset",
      "http://hl7.org/fhir/uv/crmi/StructureDefinition/crmi-publishablevalueset",
      "http://hl7.org/fhir/uv/crmi/StructureDefinition/crmi-computablevalueset"]
    },
    "url" : "https://dhis2.org/fhir/cancer-registry/ValueSet/CRAddressVS",
    "version" : "1.0.0",
    "name" : "CRAddressVS",
    "title" : "CR - Address value set",
    "status" : "active",
    "experimental" : false,
    "description" : "Value set of address codes containing placeholder values that must be customised prior to implementation to reflect the administrative geography of the country or region.",
    "compose" : {
      "include" : [{
        "system" : "https://dhis2.org/fhir/cancer-registry/CodeSystem/CRAddressCS"
      }]
    }
  },
  {
    "resourceType" : "ValueSet",
    "id" : "CRTumorNumberVS",
    "meta" : {
      "profile" : ["http://hl7.org/fhir/uv/crmi/StructureDefinition/crmi-shareablevalueset",
      "http://hl7.org/fhir/uv/crmi/StructureDefinition/crmi-publishablevalueset",
      "http://hl7.org/fhir/uv/crmi/StructureDefinition/crmi-computablevalueset"]
    },
    "url" : "https://dhis2.org/fhir/cancer-registry/ValueSet/CRTumorNumberVS",
    "version" : "1.0.0",
    "name" : "CRTumorNumberVS",
    "title" : "CR - Tumor number value set",
    "status" : "active",
    "experimental" : false,
    "description" : "Value set of tumor number identifiers. Combined with the Patient ID, the Tumor Number forms the Tumor ID composite identifier that uniquely identifies a tumor record within the system.",
    "compose" : {
      "include" : [{
        "system" : "https://dhis2.org/fhir/cancer-registry/CodeSystem/CRTumorNumberCS"
      }]
    }
  },
  {
    "resourceType" : "ValueSet",
    "id" : "CRSiteVS",
    "meta" : {
      "profile" : ["http://hl7.org/fhir/uv/crmi/StructureDefinition/crmi-shareablevalueset",
      "http://hl7.org/fhir/uv/crmi/StructureDefinition/crmi-publishablevalueset",
      "http://hl7.org/fhir/uv/crmi/StructureDefinition/crmi-computablevalueset"]
    },
    "url" : "https://dhis2.org/fhir/cancer-registry/ValueSet/CRSiteVS",
    "version" : "1.0.0",
    "name" : "CRSiteVS",
    "title" : "CR - Site value set",
    "status" : "active",
    "experimental" : false,
    "description" : "Value set of anatomical site codes used to filter topography values in a dependent dropdown list for simplified data entry.",
    "compose" : {
      "include" : [{
        "system" : "https://dhis2.org/fhir/cancer-registry/CodeSystem/CRSiteCS"
      }]
    }
  },
  {
    "resourceType" : "ValueSet",
    "id" : "CRTopographyVS",
    "meta" : {
      "profile" : ["http://hl7.org/fhir/uv/crmi/StructureDefinition/crmi-shareablevalueset",
      "http://hl7.org/fhir/uv/crmi/StructureDefinition/crmi-publishablevalueset",
      "http://hl7.org/fhir/uv/crmi/StructureDefinition/crmi-computablevalueset"]
    },
    "url" : "https://dhis2.org/fhir/cancer-registry/ValueSet/CRTopographyVS",
    "version" : "1.0.0",
    "name" : "CRTopographyVS",
    "title" : "CR - Topography value set",
    "status" : "active",
    "experimental" : false,
    "description" : "Value set of ICD-O-3 topography codes mapped from the CanReg5 topography dictionary, representing anatomical sites of tumour origin.",
    "compose" : {
      "include" : [{
        "system" : "https://dhis2.org/fhir/cancer-registry/CodeSystem/CRTopographyCS"
      }]
    }
  },
  {
    "resourceType" : "ValueSet",
    "id" : "CRMorphology4VS",
    "meta" : {
      "profile" : ["http://hl7.org/fhir/uv/crmi/StructureDefinition/crmi-shareablevalueset",
      "http://hl7.org/fhir/uv/crmi/StructureDefinition/crmi-publishablevalueset",
      "http://hl7.org/fhir/uv/crmi/StructureDefinition/crmi-computablevalueset"]
    },
    "url" : "https://dhis2.org/fhir/cancer-registry/ValueSet/CRMorphology4VS",
    "version" : "1.0.0",
    "name" : "CRMorphology4VS",
    "title" : "CR - Morphology4 value set",
    "status" : "active",
    "experimental" : false,
    "description" : "Value set of ICD-O-3.2 morphology codes (first four digits) mapped from the CanReg5 morphology dictionary, representing histological types of neoplasms.",
    "compose" : {
      "include" : [{
        "system" : "https://dhis2.org/fhir/cancer-registry/CodeSystem/CRMorphology4CS"
      }]
    }
  },
  {
    "resourceType" : "ValueSet",
    "id" : "CRBehaviourVS",
    "meta" : {
      "profile" : ["http://hl7.org/fhir/uv/crmi/StructureDefinition/crmi-shareablevalueset",
      "http://hl7.org/fhir/uv/crmi/StructureDefinition/crmi-publishablevalueset",
      "http://hl7.org/fhir/uv/crmi/StructureDefinition/crmi-computablevalueset"]
    },
    "url" : "https://dhis2.org/fhir/cancer-registry/ValueSet/CRBehaviourVS",
    "version" : "1.0.0",
    "name" : "CRBehaviourVS",
    "title" : "CR - Behaviour value set",
    "status" : "active",
    "experimental" : false,
    "description" : "Value set of tumour behaviour codes aligned with the CanReg5 ICD-O-3.2 behaviour dictionary, used in the Tumor stage to classify the biological behaviour of the neoplasm.",
    "compose" : {
      "include" : [{
        "system" : "https://dhis2.org/fhir/cancer-registry/CodeSystem/CRBehaviourCS"
      }]
    }
  },
  {
    "resourceType" : "ValueSet",
    "id" : "CRBasisDiagnosisVS",
    "meta" : {
      "profile" : ["http://hl7.org/fhir/uv/crmi/StructureDefinition/crmi-shareablevalueset",
      "http://hl7.org/fhir/uv/crmi/StructureDefinition/crmi-publishablevalueset",
      "http://hl7.org/fhir/uv/crmi/StructureDefinition/crmi-computablevalueset"]
    },
    "url" : "https://dhis2.org/fhir/cancer-registry/ValueSet/CRBasisDiagnosisVS",
    "version" : "1.0.0",
    "name" : "CRBasisDiagnosisVS",
    "title" : "CR - Basis diagnosis value set",
    "status" : "active",
    "experimental" : false,
    "description" : "Value set of basis of diagnosis codes aligned with the CanReg5 basis dictionary. Codes 0-4 are non-microscopically confirmed, codes 5-8 are microscopically confirmed, and code 9 is unknown.",
    "compose" : {
      "include" : [{
        "system" : "https://dhis2.org/fhir/cancer-registry/CodeSystem/CRBasisDiagnosisCS"
      }]
    }
  },
  {
    "resourceType" : "ValueSet",
    "id" : "CRGradeVS",
    "meta" : {
      "profile" : ["http://hl7.org/fhir/uv/crmi/StructureDefinition/crmi-shareablevalueset",
      "http://hl7.org/fhir/uv/crmi/StructureDefinition/crmi-publishablevalueset",
      "http://hl7.org/fhir/uv/crmi/StructureDefinition/crmi-computablevalueset"]
    },
    "url" : "https://dhis2.org/fhir/cancer-registry/ValueSet/CRGradeVS",
    "version" : "1.0.0",
    "name" : "CRGradeVS",
    "title" : "CR - Grade value set",
    "status" : "active",
    "experimental" : false,
    "description" : "Value set of tumour grade and differentiation codes aligned with the CanReg5 ICD-O-3.2 grade dictionary. Includes histological grades 1-4, lymphoma/leukaemia-specific codes 5-8, and unknown (9). Grade is mandatory only when behaviour is malignant (3).",
    "compose" : {
      "include" : [{
        "system" : "https://dhis2.org/fhir/cancer-registry/CodeSystem/CRGradeCS"
      }]
    }
  },
  {
    "resourceType" : "ValueSet",
    "id" : "CRMultiplePrimaryTestVS",
    "meta" : {
      "profile" : ["http://hl7.org/fhir/uv/crmi/StructureDefinition/crmi-shareablevalueset",
      "http://hl7.org/fhir/uv/crmi/StructureDefinition/crmi-publishablevalueset",
      "http://hl7.org/fhir/uv/crmi/StructureDefinition/crmi-computablevalueset"]
    },
    "url" : "https://dhis2.org/fhir/cancer-registry/ValueSet/CRMultiplePrimaryTestVS",
    "version" : "1.0.0",
    "name" : "CRMultiplePrimaryTestVS",
    "title" : "CR - Multiple primary test value set",
    "status" : "active",
    "experimental" : false,
    "description" : "Value set of result codes for the Multiple Primary Tester data quality check, determining whether tumours are duplicate registrations, distinct multiple primaries, or have unknown topography.",
    "compose" : {
      "include" : [{
        "system" : "https://dhis2.org/fhir/cancer-registry/CodeSystem/CRMultiplePrimaryTestCS"
      }]
    }
  },
  {
    "resourceType" : "ValueSet",
    "id" : "CRMorphologyFamilyVS",
    "meta" : {
      "profile" : ["http://hl7.org/fhir/uv/crmi/StructureDefinition/crmi-shareablevalueset",
      "http://hl7.org/fhir/uv/crmi/StructureDefinition/crmi-publishablevalueset",
      "http://hl7.org/fhir/uv/crmi/StructureDefinition/crmi-computablevalueset"]
    },
    "url" : "https://dhis2.org/fhir/cancer-registry/ValueSet/CRMorphologyFamilyVS",
    "version" : "1.0.0",
    "name" : "CRMorphologyFamilyVS",
    "title" : "CR - Morphology Family value set",
    "status" : "active",
    "experimental" : false,
    "description" : "Value set of morphological family grouping codes derived from the CanReg5 MorphFam.txt lookup file, used in the Sex-Morphology and Topography-Morphology data quality checks.",
    "compose" : {
      "include" : [{
        "system" : "https://dhis2.org/fhir/cancer-registry/CodeSystem/CRMorphologyFamilyCS"
      }]
    }
  },
  {
    "resourceType" : "ValueSet",
    "id" : "CRTopographyMorphologyKeyVS",
    "meta" : {
      "profile" : ["http://hl7.org/fhir/uv/crmi/StructureDefinition/crmi-shareablevalueset",
      "http://hl7.org/fhir/uv/crmi/StructureDefinition/crmi-publishablevalueset",
      "http://hl7.org/fhir/uv/crmi/StructureDefinition/crmi-computablevalueset"]
    },
    "url" : "https://dhis2.org/fhir/cancer-registry/ValueSet/CRTopographyMorphologyKeyVS",
    "version" : "1.0.0",
    "name" : "CRTopographyMorphologyKeyVS",
    "title" : "CR - Topography Morphology key value set",
    "status" : "active",
    "experimental" : false,
    "description" : "Value set of keys used in the Topography-Morphology data quality check. NA (*) means accepted with any topography; Plus (+) means checked against the MUST list; Minus (-) means checked against the MUST-NOT list.",
    "compose" : {
      "include" : [{
        "system" : "https://dhis2.org/fhir/cancer-registry/CodeSystem/CRTopographyMorphologyKeyCS"
      }]
    }
  },
  {
    "resourceType" : "ValueSet",
    "id" : "CRMorphologyGroupVS",
    "meta" : {
      "profile" : ["http://hl7.org/fhir/uv/crmi/StructureDefinition/crmi-shareablevalueset",
      "http://hl7.org/fhir/uv/crmi/StructureDefinition/crmi-publishablevalueset",
      "http://hl7.org/fhir/uv/crmi/StructureDefinition/crmi-computablevalueset"]
    },
    "url" : "https://dhis2.org/fhir/cancer-registry/ValueSet/CRMorphologyGroupVS",
    "version" : "1.0.0",
    "name" : "CRMorphologyGroupVS",
    "title" : "CR - Morphology Group value set",
    "status" : "active",
    "experimental" : false,
    "description" : "Value set of morphology group codes used in the Multiple Primary Tester data quality check, derived from the CanReg5 DefaultMultiplePrimaryTester mapping logic.",
    "compose" : {
      "include" : [{
        "system" : "https://dhis2.org/fhir/cancer-registry/CodeSystem/CRMorphologyGroupCS"
      }]
    }
  },
  {
    "resourceType" : "ValueSet",
    "id" : "CRTopographyGroupVS",
    "meta" : {
      "profile" : ["http://hl7.org/fhir/uv/crmi/StructureDefinition/crmi-shareablevalueset",
      "http://hl7.org/fhir/uv/crmi/StructureDefinition/crmi-publishablevalueset",
      "http://hl7.org/fhir/uv/crmi/StructureDefinition/crmi-computablevalueset"]
    },
    "url" : "https://dhis2.org/fhir/cancer-registry/ValueSet/CRTopographyGroupVS",
    "version" : "1.0.0",
    "name" : "CRTopographyGroupVS",
    "title" : "CR - Topography Group value set",
    "status" : "active",
    "experimental" : false,
    "description" : "Value set of topography group codes used in the Multiple Primary Tester data quality check, derived from the CanReg5 DefaultMultiplePrimaryTester mapping logic.",
    "compose" : {
      "include" : [{
        "system" : "https://dhis2.org/fhir/cancer-registry/CodeSystem/CRTopographyGroupCS"
      }]
    }
  },
  {
    "resourceType" : "ValueSet",
    "id" : "CRMorphologyResultVS",
    "meta" : {
      "profile" : ["http://hl7.org/fhir/uv/crmi/StructureDefinition/crmi-shareablevalueset",
      "http://hl7.org/fhir/uv/crmi/StructureDefinition/crmi-publishablevalueset",
      "http://hl7.org/fhir/uv/crmi/StructureDefinition/crmi-computablevalueset"]
    },
    "url" : "https://dhis2.org/fhir/cancer-registry/ValueSet/CRMorphologyResultVS",
    "version" : "1.0.0",
    "name" : "CRMorphologyResultVS",
    "title" : "CR - Morphology result value set",
    "status" : "active",
    "experimental" : false,
    "description" : "Value set of intermediate morphology evaluation result codes used in the Multiple Primary Tester check to determine whether to proceed to topography evaluation.",
    "compose" : {
      "include" : [{
        "system" : "https://dhis2.org/fhir/cancer-registry/CodeSystem/CRMorphologyResultCS"
      }]
    }
  }],
  "url" : "https://dhis2.org/fhir/cancer-registry/Questionnaire/TumorQuestionnaire",
  "version" : "0.1.0",
  "title" : "Tumor Questionnaire",
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
  "description" : "Questionnaire for the Tumor stage of the DHIS2 Cancer Registry tracker program. This is the central data collection component, structured into sections: Patient (demographics and geographic information), Tumor (core variables aligned with CanReg5 ICD-O-3.2 standards including site, topography, morphology, behaviour, basis of diagnosis, and grade), Check Status (triggers for executing data quality checks), Checks (hidden section storing individual check results for rare/invalid classifications), Morphology Topography Check (hidden section for topography-morphology validation), Multiple Primary Tester (hidden section for duplicate/multiple primary determination), Rare Status (confirmation of flagged rare cases by authorised supervisors), and Tumor ID (hidden section supporting CanReg5 data extraction).",
  "item" : [{
    "linkId" : "patientGroup",
    "text" : "Patient",
    "type" : "group",
    "item" : [{
      "linkId" : "crIncidenceDate",
      "text" : "Incidence date",
      "type" : "date",
      "required" : false,
      "repeats" : false
    },
    {
      "linkId" : "crAge",
      "text" : "Age",
      "type" : "integer",
      "required" : false,
      "repeats" : false
    },
    {
      "linkId" : "crAddress",
      "text" : "Address",
      "type" : "choice",
      "required" : false,
      "repeats" : false,
      "answerValueSet" : "#CRAddressVS"
    }]
  },
  {
    "linkId" : "tumorGroup",
    "text" : "Tumor",
    "type" : "group",
    "item" : [{
      "linkId" : "crTumorNumber",
      "text" : "Tumor number",
      "type" : "choice",
      "required" : true,
      "repeats" : false,
      "answerValueSet" : "#CRTumorNumberVS"
    },
    {
      "linkId" : "crSite",
      "text" : "Site",
      "type" : "choice",
      "required" : false,
      "repeats" : false,
      "answerValueSet" : "#CRSiteVS"
    },
    {
      "linkId" : "crTopography",
      "text" : "Topography",
      "type" : "choice",
      "required" : false,
      "repeats" : false,
      "answerValueSet" : "#CRTopographyVS"
    },
    {
      "linkId" : "crMorphology",
      "text" : "Morphology",
      "type" : "choice",
      "required" : false,
      "repeats" : false,
      "answerValueSet" : "#CRMorphology4VS"
    },
    {
      "linkId" : "crBehaviour",
      "text" : "Behaviour",
      "type" : "choice",
      "required" : false,
      "repeats" : false,
      "answerValueSet" : "#CRBehaviourVS"
    },
    {
      "linkId" : "crBasisDiagnosis",
      "text" : "Basis diagnosis",
      "type" : "choice",
      "required" : false,
      "repeats" : false,
      "answerValueSet" : "#CRBasisDiagnosisVS"
    },
    {
      "linkId" : "crGrade",
      "text" : "Grade",
      "type" : "choice",
      "required" : false,
      "repeats" : false,
      "answerValueSet" : "#CRGradeVS"
    }]
  },
  {
    "linkId" : "checkStatusGroup",
    "text" : "Check Status",
    "type" : "group",
    "item" : [{
      "linkId" : "crChecksRunChecks",
      "text" : "Run checks",
      "type" : "boolean",
      "required" : false,
      "repeats" : false
    },
    {
      "linkId" : "crRunTopographyMorphologyCheck",
      "text" : "Run Topography Morphology check",
      "type" : "boolean",
      "required" : false,
      "repeats" : false
    },
    {
      "linkId" : "crRunMultiplePrimaryCheck",
      "text" : "Run Multiple primary check",
      "type" : "boolean",
      "required" : false,
      "repeats" : false
    }]
  },
  {
    "linkId" : "checksGroup",
    "text" : "Checks",
    "type" : "group",
    "item" : [{
      "linkId" : "crChecksRareAgeMorphology",
      "text" : "Rare Age Morphology",
      "type" : "boolean",
      "required" : false,
      "repeats" : false
    },
    {
      "linkId" : "crChecksRareAgeTopography",
      "text" : "Rare Age Topography",
      "type" : "boolean",
      "required" : false,
      "repeats" : false
    },
    {
      "linkId" : "crChecksRareAgeTopographyMorphology",
      "text" : "Rare Age Topography Morphology",
      "type" : "boolean",
      "required" : false,
      "repeats" : false
    },
    {
      "linkId" : "crChecksRareBasis",
      "text" : "Rare Basis",
      "type" : "boolean",
      "required" : false,
      "repeats" : false
    },
    {
      "linkId" : "crChecksInvalidGrade",
      "text" : "Invalid Grade",
      "type" : "boolean",
      "required" : false,
      "repeats" : false
    },
    {
      "linkId" : "crChecksRareSexMorphology",
      "text" : "Rare Sex Morphology",
      "type" : "boolean",
      "required" : false,
      "repeats" : false
    },
    {
      "linkId" : "crChecksInvalidSexTopography",
      "text" : "Invalid Sex Topography",
      "type" : "boolean",
      "required" : false,
      "repeats" : false
    },
    {
      "linkId" : "crChecksRareTopographyBehaviour",
      "text" : "Rare Topography Behaviour",
      "type" : "boolean",
      "required" : false,
      "repeats" : false
    },
    {
      "linkId" : "crChecksRareTopographyMorphology",
      "text" : "Rare Topography Morphology",
      "type" : "boolean",
      "required" : false,
      "repeats" : false
    },
    {
      "linkId" : "crChecksMultiplePrimaryTestResult",
      "text" : "Multiple primary test result",
      "type" : "choice",
      "required" : false,
      "repeats" : false,
      "answerValueSet" : "#CRMultiplePrimaryTestVS"
    },
    {
      "linkId" : "crRare",
      "text" : "Rare",
      "type" : "boolean",
      "required" : false,
      "repeats" : false
    },
    {
      "linkId" : "crInvalid",
      "text" : "Invalid",
      "type" : "boolean",
      "required" : false,
      "repeats" : false
    }]
  },
  {
    "linkId" : "morphologyTopographyCheckGroup",
    "text" : "Morphology topography check",
    "type" : "group",
    "item" : [{
      "linkId" : "crMorphologyFamily",
      "text" : "Morphology Family",
      "type" : "choice",
      "required" : false,
      "repeats" : false,
      "answerValueSet" : "#CRMorphologyFamilyVS"
    },
    {
      "linkId" : "crTopographyMorphologyKey",
      "text" : "Topography Morphology key",
      "type" : "choice",
      "required" : false,
      "repeats" : false,
      "answerValueSet" : "#CRTopographyMorphologyKeyVS"
    },
    {
      "linkId" : "crPresentInTheMustList",
      "text" : "Present in the MUST list",
      "type" : "boolean",
      "required" : false,
      "repeats" : false
    },
    {
      "linkId" : "crPresentInTheMustNotList",
      "text" : "Present in the MUST-NOT list",
      "type" : "boolean",
      "required" : false,
      "repeats" : false
    }]
  },
  {
    "linkId" : "multiplePrimaryTesterGroup",
    "text" : "Multiple primary tester",
    "type" : "group",
    "item" : [{
      "linkId" : "crMorphologyGroup",
      "text" : "Morphology group",
      "type" : "choice",
      "required" : false,
      "repeats" : false,
      "answerValueSet" : "#CRMorphologyGroupVS"
    },
    {
      "linkId" : "crPreviousMorphologyGroup",
      "text" : "Previous morphology group",
      "type" : "choice",
      "required" : false,
      "repeats" : false,
      "answerValueSet" : "#CRMorphologyGroupVS"
    },
    {
      "linkId" : "crPreviousMorphologyGroupMultiple",
      "text" : "Previous morphology group (multiple)",
      "type" : "choice",
      "required" : false,
      "repeats" : false,
      "answerValueSet" : "#CRMorphologyGroupVS"
    },
    {
      "linkId" : "crTopographyGroup",
      "text" : "Topography group",
      "type" : "choice",
      "required" : false,
      "repeats" : false,
      "answerValueSet" : "#CRTopographyGroupVS"
    },
    {
      "linkId" : "crPreviousTopographyGroup",
      "text" : "Previous topography group",
      "type" : "choice",
      "required" : false,
      "repeats" : false,
      "answerValueSet" : "#CRTopographyGroupVS"
    },
    {
      "linkId" : "crPreviousTopographyGroupMultiple",
      "text" : "Previous topography group (multiple)",
      "type" : "choice",
      "required" : false,
      "repeats" : false,
      "answerValueSet" : "#CRTopographyGroupVS"
    },
    {
      "linkId" : "crMorphologyResult",
      "text" : "Morphology result",
      "type" : "choice",
      "required" : false,
      "repeats" : false,
      "answerValueSet" : "#CRMorphologyResultVS"
    }]
  },
  {
    "linkId" : "rareStatusGroup",
    "text" : "Rare status",
    "type" : "group",
    "item" : [{
      "linkId" : "crConfirmTheRareStatus",
      "text" : "Confirm the rare status",
      "type" : "boolean",
      "required" : false,
      "repeats" : false
    }]
  },
  {
    "linkId" : "tumourIdGroup",
    "text" : "Tumour ID",
    "type" : "group",
    "item" : [{
      "linkId" : "crTumourid",
      "text" : "TUMOURID",
      "type" : "string",
      "required" : false,
      "repeats" : false
    },
    {
      "linkId" : "crPreviousTumorNumber",
      "text" : "Previous tumor number",
      "type" : "choice",
      "required" : false,
      "repeats" : false,
      "answerValueSet" : "#CRTumorNumberVS"
    },
    {
      "linkId" : "crPatientId",
      "text" : "Patient ID",
      "type" : "string",
      "required" : false,
      "repeats" : false
    }]
  }]
}

```
