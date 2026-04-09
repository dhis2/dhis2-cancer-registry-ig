Logical: CancerRegistry
Title: "Cancer Registry"
Parent: Base
* crPatientId 1..1 string "CR - Patient ID"
  * ^code[+] = Dhis2TrackedEntityAttributesCS#hDEhIMZe07x
* familyName 1..1 string "Family name or last name of the person or case."
  * ^code[+] = Dhis2TrackedEntityAttributesCS#nJsmdQXRoze
* givenName 0..1 string "Given name or first name of the person or case."
  * ^code[+] = Dhis2TrackedEntityAttributesCS#sB1IHYu2xQT
* crSex 1..1 code "CR - Sex"
* crSex from CRSexVS (required)
  * ^code[+] = Dhis2TrackedEntityAttributesCS#m7GEZG8cyCO
* dateOfBirth 1..1 date "Date of birth. This field can also be used when the date of birth is estimated, in conjunction with another attribute that indicates whether the birth date is estimated."
  * ^code[+] = Dhis2TrackedEntityAttributesCS#NI0QRzJvQ0k
* tumor 0..* Tumor "Tumor"
* source 0..* Source "Source"
* followUp 0..* FollowUp "Follow up"
