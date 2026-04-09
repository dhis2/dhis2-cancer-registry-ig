CodeSystem: CRMorphologyResultCS
Title: "CR - Morphology result"
Description: "Intermediate morphology evaluation result codes used in the Multiple Primary Tester check. When the morphology comparison between two tumours is inconclusive (undecided), the check proceeds to topography evaluation. 'Invalid' indicates one of the morphology groups is invalid (0). 'Go to topography' indicates the morphology evaluation was undecided and topography comparison is needed."
* ^meta.profile[+] = "http://hl7.org/fhir/uv/crmi/StructureDefinition/crmi-shareablecodesystem"
* ^meta.profile[+] = "http://hl7.org/fhir/uv/crmi/StructureDefinition/crmi-publishablecodesystem"
* ^experimental = false
* ^caseSensitive = true
* #"INVALID" "Invalid"
* #"GO_TO_TOPOGRAPHY" "Go to topography"
* #"DUPLICATE_PRIMARY" "Duplicate primary"
* #"MULTIPLE_PRIMARY" "Multiple primary"
