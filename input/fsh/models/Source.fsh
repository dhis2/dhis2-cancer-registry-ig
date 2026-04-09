Logical: Source
Title: "Source"
Description: "Source stage of the DHIS2 Cancer Registry tracker program. This repeatable stage records the documentation sources from which a cancer case has been notified to the registry. Each source represents a piece of documentation, such as a hospital record, pathology report, or death certificate, that supports the registration of a specific tumor. Sources are linked to a specific tumor via the Tumor Number."
Parent: Base
* crSourceTumorNumber 1..1 code "CR - Source: Tumor number"
* crSourceTumorNumber from CRTumorNumberVS (required)
  * ^code[+] = Dhis2DataElementsCS#fID2of7Q8Jj
* crSourceDate 0..1 date "CR - Source date"
  * ^code[+] = Dhis2DataElementsCS#TgjO873BZTu
* crSourceType 0..1 code "CR - Source Type"
* crSourceType from CRPlaceholderSourceTypeVS (required)
  * ^code[+] = Dhis2DataElementsCS#Mqz5dPrwWho
* crPatientId 0..1 string "CR - Patient ID"
  * ^code[+] = Dhis2DataElementsCS#EMoLghRDW4A
* crTumouridsourcetable 0..1 string "CR - TUMOURIDSOURCETABLE"
  * ^code[+] = Dhis2DataElementsCS#HxMFZcIIZpL
