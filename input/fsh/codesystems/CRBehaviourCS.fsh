CodeSystem: CRBehaviourCS
Title: "CR - Behaviour"
Description: "Tumour behaviour codes aligned with the CanReg5 ICD-O-3.2 behaviour dictionary. Used in the Tumor stage to classify the biological behaviour of the neoplasm. These codes are referenced in data quality checks including the Topography-Behaviour and Sex-Morphology checks. Codes must not be modified as they are mapped directly to CanReg5 standards."
* ^meta.profile[+] = "http://hl7.org/fhir/uv/crmi/StructureDefinition/crmi-shareablecodesystem"
* ^meta.profile[+] = "http://hl7.org/fhir/uv/crmi/StructureDefinition/crmi-publishablecodesystem"
* ^experimental = false
* ^caseSensitive = true
* #"0" "Benign (0)"
* #"1" "Uncertain (1)"
* #"2" "In situ (2)"
* #"3" "Malignant (3)"
