Profile: CRFollowUpEncounter
Parent: Encounter
Id: cr-followup-encounter
Title: "Follow-up Encounter"
Description: "Encounter representing a single Follow-up stage event in the DHIS2 Cancer Registry tracker program. Each follow-up contact with a registered patient to ascertain vital status is recorded as a separate encounter. Observations within this encounter capture the vital status, date of last contact, and optional date of death."
* status MS
* class MS
* type 1..* MS
* type = CREncounterTypeCS#follow-up
* type ^short = "Follow-up contact encounter"
* subject 1..1 MS
* subject only Reference(CRPatient)
* episodeOfCare 1..* MS
* episodeOfCare only Reference(CRCancerRegistrationEpisode)
* episodeOfCare ^short = "Link to the overall cancer registration episode"
* period MS
* period.start MS
* period.start ^short = "Event date of the follow-up contact"
