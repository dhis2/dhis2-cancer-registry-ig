Profile: CRCancerRegistrationEpisode
Parent: EpisodeOfCare
Id: cr-cancer-registration-episode
Title: "Cancer Registration EpisodeOfCare"
Description: "Episode of Care representing the overall enrollment of a patient in the cancer registry. Corresponds to the DHIS2 Cancer Registry tracker program enrollment. All stage-level Encounters (Tumor, Source, Follow-up) reference this episode."
* status MS
* patient 1..1 MS
* patient only Reference(CRPatient)
* patient ^short = "The registered cancer patient"
* period MS
* period ^short = "Enrollment period in the cancer registry"
* period.start 1..1 MS
* period.start ^short = "Date of enrollment (registration date)"
