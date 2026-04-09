This page describes the structure of the DHIS2 Cancer Registry Tracker program as represented in this implementation guide. For the full design documentation, see the [System Design Guide](https://docs.dhis2.org/en/implement/health/non-communicable-diseases/cancer-registry/design.html).

### Tracker Program Structure

The Cancer Registry tracker is composed of an enrollment stage and three repeatable program stages:

| Component      | Description                                                                                                                          |
| -------------- | ------------------------------------------------------------------------------------------------------------------------------------ |
| **Enrollment** | Captures basic demographic data about a person as Tracked Entity Attributes (TEAs). The Tracked Entity Type is 'Person'.             |
| **Tumor**      | Captures core clinical and epidemiological information related to each tumor. Repeatable.                                            |
| **Source**     | Records documentation sources associated with each tumor (e.g. hospital records, pathology reports, death certificates). Repeatable. |
| **Follow-up**  | Records the follow-up status of the patient over time. Not linked to a specific tumor or source. Repeatable.                         |

### Tracked Entity Type

The Tracked Entity Type for the Cancer Registry program is **Person**. Each enrolled person represents an individual cancer patient registered in the population-based cancer registry. The TET is configured at the system level and may be shared with other DHIS2 tracker programs deployed within the same national instance, in line with standard [DHIS2 implementation practice](https://docs.dhis2.org/en/implement/health/dhis2-health-data-toolkit/common-metadata-library/design.html).

### Enrollment

The enrollment stage captures the core patient demographic information required to register an individual in the cancer registry program. The attributes collected at enrollment represent the minimum dataset necessary for population-based cancer registration and have been mapped to the IARC standard data requirements.

Five key tracked entity attributes are collected:

| Attribute         | Description                                                                                                                                                                                                                                                 |
| ----------------- | ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| **Patient ID**    | Automatically generated using the CanReg5 convention: 8 characters in the form `CURRENT_DATE(yyyy)+SEQUENTIAL(####)`.                                                                                                                                       |
| **Family Name**   | Family name or last name, shared TEA across DHIS2 Tracker programs.                                                                                                                                                                                         |
| **Given Name**    | Given name or first name, shared TEA across DHIS2 Tracker programs.                                                                                                                                                                                         |
| **Sex**           | Uses numeric codes (1=Male, 2=Female, 9=Unknown) mapped to the [CanReg5 sex dictionary](https://github.com/IARC-CSU/CanReg5/blob/release/R45/src/canreg/common/resources/dictionaries/sex.tsv). These codes are referenced in multiple data quality checks. |
| **Date of Birth** | Date of birth, can also be used when the date of birth is estimated.                                                                                                                                                                                        |

### Tumor Stage

The Tumor stage is the central component of the tracker program. It captures all key clinical and epidemiological information and is where the full set of [data quality checks](data-quality-checks.html) is applied.

The stage is structured into multiple sections:

| Section                     | Visibility            | Purpose                                                                                                                     |
| --------------------------- | --------------------- | --------------------------------------------------------------------------------------------------------------------------- |
| Patient                     | Visible               | Patient demographic and geographic information including incidence date, age, and address.                                  |
| Tumor                       | Visible               | Core tumor variables: tumor number, site, topography, morphology, behaviour, basis of diagnosis, and grade.                 |
| Check Status                | Visible               | Triggers for executing data quality checks (Run checks, Run Topography Morphology check, Run Multiple primary check).       |
| Checks                      | Hidden                | Stores the result of each individual data quality check as boolean data elements plus summary Rare/Invalid classifications. |
| Morphology Topography Check | Hidden                | Intermediate data elements for the multi-step topography-morphology validation.                                             |
| Multiple Primary Tester     | Hidden                | Intermediate data elements for the multi-step multiple primary determination.                                               |
| Rare Status                 | Conditionally visible | Visible only when the tumor is classified as rare and only to authorised users who can confirm the rare status.             |
| Tumor ID                    | Hidden                | Stores identifiers needed for CanReg5 data extraction (Patient ID, TUMOURID, Previous Tumor Number).                        |

#### Patient Section

The central date field is the **Incidence Date**, which is the reference date used for all analytical outputs in CanReg5. The **Age** must be entered manually and is verified against the date of birth and incidence date by a program rule.

The **Address** field uses placeholder values that must be customised prior to implementation to reflect the administrative geography of the country or region.

#### Tumor Section

The tumor section captures the key variables for every cancer case, aligned with IARC standard data requirements. The option sets are mapped with the CanReg5 ICD-O-3.2 version:

| Variable           | CanReg5 Dictionary Source                                                                                                        |
| ------------------ | -------------------------------------------------------------------------------------------------------------------------------- |
| Site / Topography  | [topography.tsv](https://github.com/IARC-CSU/CanReg5/blob/release/R45/src/canreg/common/resources/dictionaries/topography.tsv)   |
| Morphology         | [morphology4.tsv](https://github.com/IARC-CSU/CanReg5/blob/release/R45/src/canreg/common/resources/dictionaries/morphology4.tsv) |
| Behaviour          | [behaviour.tsv](https://github.com/IARC-CSU/CanReg5/blob/release/R45/src/canreg/common/resources/dictionaries/behaviour.tsv)     |
| Basis of Diagnosis | [basis.tsv](https://github.com/IARC-CSU/CanReg5/blob/release/R45/src/canreg/common/resources/dictionaries/basis.tsv)             |
| Grade              | [grade.tsv](https://github.com/IARC-CSU/CanReg5/blob/release/R45/src/canreg/common/resources/dictionaries/grade.tsv)             |

The **Tumor Number** is a unique identifier for the tumor within the registry. Combined with the Patient ID, it forms the **Tumor ID** — the composite identifier that uniquely identifies a tumor record. A validation mechanism prevents the same tumor number from being assigned to more than one tumor belonging to the same patient.

> **Note:** The option sets and their associated codes are mapped directly to the CanReg5 standards. It is critical that these codes are not modified during local implementation. Any alteration to the option codes will break the logic of the data quality checks.

#### Mandatory Elements

The only formally mandatory data element is the **Tumor Number**. However, in practice, all data elements in the patient and tumor sections must be populated for the data quality checks to execute correctly. The sole exception is the **Grade** field, which is not required when the behaviour code indicates a value other than malignant.

### Source Stage

The Source stage records the documentation sources from which a cancer case has been notified to the registry. Each source is linked to a specific tumor via the **Tumor Number**. If a tumor number selected in the source record has not been previously assigned in any tumor event for the same patient, an error message is displayed.

| Section             | Visibility | Purpose                                                                            |
| ------------------- | ---------- | ---------------------------------------------------------------------------------- |
| Source              | Visible    | Source documentation details including tumor number, source date, and source type. |
| TUMOURIDSOURCETABLE | Hidden     | Identifiers needed for CanReg5 data extraction (Patient ID, TUMOURIDSOURCETABLE).  |

The **Type of source** field uses placeholder values that must be customised prior to implementation.

### Follow-up Stage

The Follow-up stage records the follow-up status of the registered patient over time. It captures:

- **Date of last contact** — the date of last contact with or information about the patient.
- **Status** — the vital status of the patient (Alive, Died, Unknown).
- **Date of death** — recorded when the status is death.

### User Groups

| User Group        | Metadata          | Data                 |
| ----------------- | ----------------- | -------------------- |
| CR - Admin        | Can edit and view | No access            |
| CR - Access       | Can view only     | Can view only        |
| CR - Data capture | Can view only     | Can capture and view |
