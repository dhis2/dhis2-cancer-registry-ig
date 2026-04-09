CodeSystem: CRSexCS
Title: "CR - Sex"
Description: "Sex codes aligned with the CanReg5 sex dictionary, using numeric codes. These codes are referenced in multiple data quality checks throughout the program, including the Sex-Topography and Sex-Morphology checks. Any modification to these codes or substitution with a differently coded option set would break the logic of those checks."
* ^meta.profile[+] = "http://hl7.org/fhir/uv/crmi/StructureDefinition/crmi-shareablecodesystem"
* ^meta.profile[+] = "http://hl7.org/fhir/uv/crmi/StructureDefinition/crmi-publishablecodesystem"
* ^experimental = false
* ^caseSensitive = true
* #"1" "Male"
* #"2" "Female"
* #"9" "Unknown"
