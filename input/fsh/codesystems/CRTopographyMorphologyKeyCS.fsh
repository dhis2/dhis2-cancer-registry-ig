CodeSystem: CRTopographyMorphologyKeyCS
Title: "CR - Topography Morphology key"
Description: "Keys used in the Topography-Morphology data quality check to determine how each morphological family relates to topography. NA (*): the family is accepted with any topography. Plus (+): the family has a restricted set of expected topography sites checked against the MUST list. Minus (-): the family has a restricted set of prohibited topography sites checked against the MUST-NOT list."
* ^meta.profile[+] = "http://hl7.org/fhir/uv/crmi/StructureDefinition/crmi-shareablecodesystem"
* ^meta.profile[+] = "http://hl7.org/fhir/uv/crmi/StructureDefinition/crmi-publishablecodesystem"
* ^experimental = false
* ^caseSensitive = true
* #"NA" "*"
* #"PLUS" "+"
* #"MINUS" "-"
