Invariant: cr-regno-length
Description: "Patient registration number (REGNO) must be at least 8 characters."
Severity: #error
Expression: "$this.length() >= 8"

Profile: CRPatient
Parent: Patient
Id: cr-patient
Title: "CanReg5 Cancer Registry Patient"
Description: "Minimum patient profile for CanReg5-aligned population-based cancer registration. Requires a patient registration number (REGNO) of at least 8 characters following the CanReg5 CURRENT_DATE(yyyy)+SEQUENTIAL(####) convention, family name, administrative sex, and date of birth."
* identifier 1..* MS
* identifier ^slicing.discriminator.type = #pattern
* identifier ^slicing.discriminator.path = "type"
* identifier ^slicing.rules = #open
* identifier contains regno 1..1 MS
* identifier[regno].type 1..1
* identifier[regno].type = http://terminology.hl7.org/CodeSystem/v2-0203#MR
* identifier[regno].value 1..1
* identifier[regno].value obeys cr-regno-length
* identifier[regno] ^short = "CanReg5 patient registration number (REGNO)"
* identifier[regno] ^definition = "The unique patient registration number assigned by the cancer registry, following the CanReg5 convention CURRENT_DATE(yyyy)+SEQUENTIAL(####). Must be at least 8 characters."
* name 1..* MS
* name.family 1..1 MS
* name.family ^short = "Family name or last name"
* name.given MS
* name.given ^short = "Given name or first name"
* gender 1..1 MS
* gender ^short = "Administrative sex of the patient (mapped from CanReg5 sex codes 1=male, 2=female, 9=unknown)"
* birthDate 1..1 MS
* birthDate ^short = "Date of birth (may be estimated)"
