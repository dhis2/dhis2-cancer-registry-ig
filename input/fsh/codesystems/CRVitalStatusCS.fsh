CodeSystem: CRVitalStatusCS
Title: "CR - Vital status"
Description: "Vital status codes used in the Follow-up stage to record the current status of the registered patient. When the status is 'Died', the date of death must also be recorded."
* ^meta.profile[+] = "http://hl7.org/fhir/uv/crmi/StructureDefinition/crmi-shareablecodesystem"
* ^meta.profile[+] = "http://hl7.org/fhir/uv/crmi/StructureDefinition/crmi-publishablecodesystem"
* ^experimental = false
* ^caseSensitive = true
* #"1" "Alive"
* #"2" "Died"
* #"9" "Unknown"
