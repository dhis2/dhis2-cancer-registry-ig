Profile: CRSourceEncounter
Parent: Encounter
Id: cr-source-encounter
Title: "Source Notification Encounter"
Description: "Encounter representing a single Source stage event in the DHIS2 Cancer Registry tracker program. Each documentation source (hospital record, pathology report, death certificate, etc.) that notifies the registry about a cancer case is recorded as a separate encounter. Observations within this encounter capture the source type and linked tumor number."
* status MS
* class MS
* type 1..* MS
* type = CREncounterTypeCS#source
* type ^short = "Source notification encounter"
* subject 1..1 MS
* subject only Reference(CRPatient)
* episodeOfCare 1..* MS
* episodeOfCare only Reference(CRCancerRegistrationEpisode)
* episodeOfCare ^short = "Link to the overall cancer registration episode"
* period MS
* period.start MS
* period.start ^short = "Event date of the source notification"
