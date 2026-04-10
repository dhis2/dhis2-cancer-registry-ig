Profile: CRTumorEncounter
Parent: Encounter
Id: cr-tumor-encounter
Title: "Tumor Registration Encounter"
Description: "Encounter representing a single Tumor stage event in the DHIS2 Cancer Registry tracker program. Each time a tumour is registered for a patient, a new Encounter of this type is created. Observations for each data element (topography, morphology, behaviour, grade, basis of diagnosis, etc.) reference this Encounter."
* status MS
* class MS
* type 1..* MS
* type = CREncounterTypeCS#tumor
* type ^short = "Tumor registration encounter"
* subject 1..1 MS
* subject only Reference(CRPatient)
* episodeOfCare 1..* MS
* episodeOfCare only Reference(CRCancerRegistrationEpisode)
* episodeOfCare ^short = "Link to the overall cancer registration episode"
* period MS
* period.start MS
* period.start ^short = "Event date of the tumor registration"
* extension contains CRRareExtension named rare 0..1 MS
* extension[rare] ^short = "Whether this tumor is classified as rare (IARC)"
