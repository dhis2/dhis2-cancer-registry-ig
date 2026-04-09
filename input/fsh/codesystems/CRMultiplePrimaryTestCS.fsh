CodeSystem: CRMultiplePrimaryTestCS
Title: "CR - Multiple primary test"
Description: "Result codes for the Multiple Primary Tester data quality check. This check determines whether two or more tumours registered for the same patient represent duplicate registrations of the same tumour or distinct multiple primary tumours, based on the CanReg5 DefaultMultiplePrimaryTester logic."
* ^meta.profile[+] = "http://hl7.org/fhir/uv/crmi/StructureDefinition/crmi-shareablecodesystem"
* ^meta.profile[+] = "http://hl7.org/fhir/uv/crmi/StructureDefinition/crmi-publishablecodesystem"
* ^experimental = false
* ^caseSensitive = true
* #"DUPLICATE_PRIMARY" "Duplicate primary"
* #"MULTIPLE_PRIMARY" "Multiple primary"
* #"UNKNOWN_TOPOGRAPHY" "Unknown topography"
