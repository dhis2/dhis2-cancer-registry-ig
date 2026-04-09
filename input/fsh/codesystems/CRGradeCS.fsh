CodeSystem: CRGradeCS
Title: "CR - Grade"
Description: "Tumour grade and differentiation codes aligned with the CanReg5 ICD-O-3.2 grade dictionary. Codes 1-4 represent histological grade (well differentiated to undifferentiated/anaplastic). Codes 5-8 are reserved for lymphomas and leukaemias (T-cell, B-cell, Null cell, NK cell). Code 9 represents unknown/not stated. Grade is mandatory only when behaviour is malignant (3). These codes are used in the Grade data quality check."
* ^meta.profile[+] = "http://hl7.org/fhir/uv/crmi/StructureDefinition/crmi-shareablecodesystem"
* ^meta.profile[+] = "http://hl7.org/fhir/uv/crmi/StructureDefinition/crmi-publishablecodesystem"
* ^experimental = false
* ^caseSensitive = true
* #"1" "Grade I (1)"
* #"2" "Grade II (2)"
* #"3" "Grade III (3)"
* #"4" "Grade IV (4)"
* #"5" "T-Cell (5)"
* #"6" "B-Cell (6)"
* #"7" "Null cell (7)"
* #"8" "NK cell (8)"
* #"9" "Unknown/Not Stated/NA (9)"
