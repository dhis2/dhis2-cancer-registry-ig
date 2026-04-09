Logical: FollowUp
Title: "Follow up"
Description: "Follow-up stage of the DHIS2 Cancer Registry tracker program. This repeatable stage records the follow-up status of the registered patient over time, capturing the date of last contact, the vital status, and, in cases where the status is death, the date of death. This stage is not associated with a specific tumor or source."
Parent: Base
* crDateLastContact 0..1 date "CR - Date last contact"
  * ^code[+] = Dhis2DataElementsCS#Ks2WWWWCuzq
* crStatus 0..1 code "CR - Status"
* crStatus from CRVitalStatusVS (required)
  * ^code[+] = Dhis2DataElementsCS#nMpcjKFF5zt
* crDateOfDeath 0..1 date "CR - Date of death"
  * ^code[+] = Dhis2DataElementsCS#hCJqPZcw2n6
