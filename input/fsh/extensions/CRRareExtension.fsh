Extension: CRRareExtension
Id: cr-rare
Title: "Rare Tumor Classification"
Description: "Indicates whether the registered tumor has been classified as rare according to the IARC/CanReg5 data quality checks. This is a computed flag derived from the topography-morphology combination evaluated against the IARC rare cancer reference tables. Corresponds to the CR - Rare data element in the DHIS2 Cancer Registry Tumor stage."
Context: Encounter
* value[x] only boolean
* valueBoolean 1..1 MS
* valueBoolean ^short = "True if the tumor is classified as rare"