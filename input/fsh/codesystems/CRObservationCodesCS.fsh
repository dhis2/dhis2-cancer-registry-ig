CodeSystem: CRObservationCodesCS
Id: cr-observation-codes
Title: "Cancer Registry Observation Codes"
Description: "Code system defining observation type codes for cancer registry observations. Used where no standard LOINC code exists for cancer-registry-specific concepts."
* ^caseSensitive = true
* #topography "Topography" "ICD-O-3 topography code indicating the anatomical site of the primary tumour."
* #morphology "Morphology" "ICD-O-3 morphology code (4-digit histological type) of the neoplasm."
* #behaviour "Behaviour" "ICD-O-3 behaviour code of the neoplasm (0=benign, 1=uncertain, 2=in situ, 3=malignant)."
* #basis-of-diagnosis "Basis of Diagnosis" "How the cancer diagnosis was established. Coded according to the ICD-O-3 basis of diagnosis classification (codes 0–9)."
* #site "Site" "Higher-level anatomical site grouping derived from the ICD-O-3 topography."
* #incidence-date "Incidence Date" "Date of incidence (diagnosis date) of the cancer case."
* #age-at-incidence "Age at Incidence" "Age of the patient at the date of incidence."
* #address "Address" "Administrative address code of the patient at incidence."
* #tumor-number "Tumor Number" "Sequential tumor number within the patient's registration."
* #vital-status "Vital Status" "Follow-up vital status of the registered cancer patient (alive, dead, or unknown)."
* #date-of-death "Date of Death" "Date of death of the patient."
* #source-type "Source Type" "Type of documentation source that notified the cancer registry about a case (e.g. hospital, laboratory, death certificate)."
* #source-tumor-number "Source Tumor Number" "Tumor number that this source notification relates to."