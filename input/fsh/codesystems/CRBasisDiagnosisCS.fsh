CodeSystem: CRBasisDiagnosisCS
Title: "CR - Basis diagnosis"
Description: "Basis of diagnosis codes aligned with the CanReg5 basis dictionary. Codes 0-4 represent non-microscopically confirmed diagnoses (death certificate only, clinical, clinical investigation/ultrasound, surgery/autopsy, laboratory test). Codes 5-8 represent microscopically confirmed diagnoses (cytology, histology of metastasis, histology of primary, autopsy with histology). Code 9 represents unknown basis. Used in the Basis data quality check."
* ^meta.profile[+] = "http://hl7.org/fhir/uv/crmi/StructureDefinition/crmi-shareablecodesystem"
* ^meta.profile[+] = "http://hl7.org/fhir/uv/crmi/StructureDefinition/crmi-publishablecodesystem"
* ^experimental = false
* ^caseSensitive = true
* #"0" "Death Certificate Only (0)"
* #"1" "Clinical only (1)"
* #"2" "Clin. Invest./Ult Soun (2)"
* #"3" "Surgery/Autopsy (3)"
* #"4" "Laboratory test (4)"
* #"5" "Cytology (5)"
* #"6" "Histology of metastase (6)"
* #"7" "Histology of primary (7)"
* #"8" "Autopsy/Histology (8)"
* #"9" "Unknown (9)"
