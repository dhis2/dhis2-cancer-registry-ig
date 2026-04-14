# Data Quality Checks - DHIS2 Cancer Registry Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* **Data Quality Checks**

## Data Quality Checks

One of the central features of the DHIS2 Cancer Registry toolkit is the implementation of data quality checks used in [CanReg5](https://github.com/IARC-CSU/CanReg5/tree/release/R45/src/canreg/common/qualitycontrol) to assess the completeness and accuracy of registered cancer cases. These checks ensure that collected data meets the standards required for valid epidemiological analysis and international comparability.

For the full design documentation, see the [System Design Guide — Checks section](https://docs.dhis2.org/en/implement/health/non-communicable-diseases/cancer-registry/design.html#checks).

### Overview

The checks are implemented as DHIS2 program rules operating on data elements within the Tumor stage. Each check result is stored as a boolean data element in the hidden **Checks** section. Two summary classification elements — **Rare** and **Invalid** — aggregate the individual check results.

When generating any analytical output, the following filters must always be applied to ensure analytical integrity:

* **Run checks** = true
* **Rare** = false, OR **Rare** = true AND **Confirm rare status** = true
* **Invalid** = false

### Transversal Considerations

#### Value Types

A key aspect of the correct implementation is the use of **Number** value types for data elements and option sets. This allows CanReg5 range conditions to be translated directly into DHIS2 program rule expressions without modification. For example, a CanReg5 condition such as `morphologyNumber >= 8270 && morphologyNumber <= 8281` can be used as-is in DHIS2.

#### Grouped Code Logic

Some CanReg5 checks group topography codes by dividing the code by 10. Since this is not natively supported in DHIS2 program rules, the equivalent logic is expressed as explicit range conditions. For example, `topographyGroup == 53` becomes `topography >= 530 && topography <= 539`.

### Check Details

#### Age — Incidence Date — Birth Date

Verifies that the entered age is consistent with the incidence date and date of birth. A warning is triggered if the entered age does not match the calculated value.

* **Program rule:** CR - Check age incidence date and date of birth
* **CanReg5 reference:** [CheckAgeIncidenceDateBirthDate.java](https://github.com/IARC-CSU/CanReg5/blob/release/R45/src/canreg/common/qualitycontrol/CheckAgeIncidenceDateBirthDate.java)

#### Age — Morphology

Identifies **rare** combinations of age and morphology. Examples include:

* Age ≤ 25 and morphology is one of: 9730, 9823, 9890
* Age ≥ 15 and morphology includes: 8910, 8960, 8961, 8962, 8970, 8981, 8991, 9072, 9470, 9490, 9500, 9687
* Age < 15 and morphology includes: 9724, 9732, 9823
* **Program rule:** CR - Rare Age Morphology
* **CanReg5 reference:** [CheckAgeMorphology.java](https://github.com/IARC-CSU/CanReg5/blob/release/R45/src/canreg/common/qualitycontrol/CheckAgeMorphology.java)

#### Age — Topography

Identifies **rare** combinations of age and topography. Examples include:

* Age < 5 and topography 530–539 or 610–619
* Age < 20 and topography in ranges 150–159, 190–199, 200–209, 210–219, 230–239, 240–249, 384, 500–509, 530–549, 550–559
* **Program rule:** CR - Rare Age Topography
* **CanReg5 reference:** [CheckAgeTopography.java](https://github.com/IARC-CSU/CanReg5/blob/release/R45/src/canreg/common/qualitycontrol/CheckAgeTopography.java)

#### Age — Topography — Morphology

Identifies **rare** combinations of age, topography, and morphology together. Examples include:

* Age < 40 and topography 610–619 and morphology 8140–8149
* Age < 20 and topography 170–179 and morphology < 9590
* Age > 5 and morphology 9510 or 9512 and topography 690–699
* Age < 15 or age > 45 and topography 580–589 and morphology 9100
* **Program rule:** CR - Rare Age Topography Morphology
* **CanReg5 reference:** [CheckAgeTopographyMorphology.java](https://github.com/IARC-CSU/CanReg5/blob/release/R45/src/canreg/common/qualitycontrol/CheckAgeTopographyMorphology.java)

#### Basis of Diagnosis

Verifies that the basis of diagnosis is consistent with the morphology and topography. Basis codes are classified as:

* **Non-microscopically confirmed:** codes 0–4
* **Microscopically confirmed:** codes 5–8
* **Unknown:** code 9

A set of morphology codes are accepted regardless of the basis of diagnosis. For all other morphology codes, if the basis is not microscopically confirmed, the result is **Rare**.

* **Program rule:** CR - Rare Basis
* **CanReg5 reference:** [CheckBasis.java](https://github.com/IARC-CSU/CanReg5/blob/release/R45/src/canreg/common/qualitycontrol/CheckBasis.java)

#### Grade

Verifies that the grade value is consistent with the behaviour and morphology:

* **Non-malignant cases** (behaviour ≠ 3): grade should be empty or coded as 9. Any other grade value returns **Invalid**.
* **Malignant cases** (behaviour = 3): grade is mandatory. If empty, returns **Missing**. If outside the valid range 1–9, returns **Invalid**.
* Specific morphology-grade consistency rules are enforced (e.g. morphology 8331 must have grade 1; grade codes 5–8 are only valid for lymphomas/leukaemias where morphology ≥ 9590).
* **Program rule:** CR - Check Grade
* **CanReg5 reference:** [CheckGrade.java](https://github.com/IARC-CSU/CanReg5/blob/release/R45/src/canreg/common/qualitycontrol/CheckGrade.java)

#### Morphology

Verifies that the morphology code is a valid ICD-O-3 code. In DHIS2, this check does not require a dedicated program rule because the morphology field is a closed option set — validity is guaranteed by the data entry interface.

* **CanReg5 reference:** [CheckMorphology.java](https://github.com/IARC-CSU/CanReg5/blob/release/R45/src/canreg/common/qualitycontrol/CheckMorphology.java)

#### Sex — Morphology

Identifies **rare** combinations of sex and morphology based on morphological families (from the CanReg5 [MorphFam.txt](https://github.com/IARC-CSU/CanReg5/blob/release/R45/src/canreg/common/resources/lookup/MorphFam.txt) lookup):

* Male with morphologies from families: Vulva/Vagina, Uterus, Ovary, Female genitalia, Placenta
* Male with morphology 9084 and behaviour 3
* Female with morphologies from families: Penis, Prostate/Testis
* **Program rule:** CR - Rare Sex Morphology
* **CanReg5 reference:** [CheckSexMorphology.java](https://github.com/IARC-CSU/CanReg5/blob/release/R45/src/canreg/common/qualitycontrol/CheckSexMorphology.java)

#### Sex — Topography

Identifies **invalid** combinations of sex and topography — anatomically impossible cases:

* Male with topography 510–589 (female genital organs)
* Female with topography 600–639 (male genital organs)
* **Program rule:** CR - Invalid Sex Topography
* **CanReg5 reference:** [CheckSexTopography.java](https://github.com/IARC-CSU/CanReg5/blob/release/R45/src/canreg/common/qualitycontrol/CheckSexTopography.java)

#### Topography

Verifies that the topography code is a valid ICD-O-3 code, checked against the [O3_10T.txt](https://github.com/IARC-CSU/CanReg5/blob/release/R45/src/canreg/common/resources/lookup/O3_10T.txt) reference lookup. Like the morphology check, this does not require a program rule because the topography field is a closed option set.

* **CanReg5 reference:** [CheckTopography.java](https://github.com/IARC-CSU/CanReg5/blob/release/R45/src/canreg/common/qualitycontrol/CheckTopography.java)

#### Topography — Behaviour

Identifies **rare** combinations of topography and behaviour. Flags in situ behaviour (code 2) for topography sites where in situ tumours are considered rare:

* Behaviour = 2 and topography in ranges: 400–409, 410–419, 420–429, 470–479, 490–499, 700–729
* **Program rule:** CR - Rare Topography Behaviour
* **CanReg5 reference:** [CheckTopographyBehaviour.java](https://github.com/IARC-CSU/CanReg5/blob/release/R45/src/canreg/common/qualitycontrol/CheckTopographyBehaviour.java)

#### Topography — Morphology

Identifies **rare** combinations of topography and morphology by evaluating the morphological family against two reference lookup tables:

* **MUST list:** combinations where a family **must** be associated with specific topography sites. If not found, the combination is rare.
* **MUST-NOT list:** combinations where a family **must not** be associated with specific topography sites. If found, the combination is rare.

Each morphological family is assigned a key:

* **NA (*):** accepted with any topography, check passes.
* **Plus (+):** checked against the MUST list.
* **Minus (−):** checked against the MUST-NOT list.

This is one of the most complex checks, requiring multiple intermediate program rules and calculated data elements. It requires a separate trigger — **Run Topography Morphology check**.

* **CanReg5 reference:** [CheckTopographyMorphology.java](https://github.com/IARC-CSU/CanReg5/blob/release/R45/src/canreg/common/qualitycontrol/CheckTopographyMorphology.java)

#### Multiple Primary Tester

Determines whether two or more tumors registered for the same patient represent **duplicate registrations** or **distinct multiple primary tumors**. Unlike all other checks, this operates across tumor events and returns one of three values:

* **Duplicate primary**
* **Multiple primary**
* **Unknown topography**

The check evaluates **Morphology Group** and **Topography Group** values derived from the CanReg5 mapping logic. The evaluation follows this sequence:

1. **Morphology evaluation**— compares current and previous morphology groups to determine if tumours are the same type.
1. **Topography evaluation**— performed only when the morphology result is undecided; compares current and previous topography groups.

This check requires a separate trigger — **Run Multiple primary check**.

* **CanReg5 reference:** [DefaultMultiplePrimaryTester.java](https://github.com/IARC-CSU/CanReg5/blob/release/R45/src/canreg/common/qualitycontrol/DefaultMultiplePrimaryTester.java)

### Summary of Checks

| | | | |
| :--- | :--- | :--- | :--- |
| Age — Incidence Date — Birth Date | Age, Incidence Date, Date of Birth | Warning | [CheckAgeIncidenceDateBirthDate.java](https://github.com/IARC-CSU/CanReg5/blob/release/R45/src/canreg/common/qualitycontrol/CheckAgeIncidenceDateBirthDate.java) |
| Age — Morphology | Age, Morphology | Rare | [CheckAgeMorphology.java](https://github.com/IARC-CSU/CanReg5/blob/release/R45/src/canreg/common/qualitycontrol/CheckAgeMorphology.java) |
| Age — Topography | Age, Topography | Rare | [CheckAgeTopography.java](https://github.com/IARC-CSU/CanReg5/blob/release/R45/src/canreg/common/qualitycontrol/CheckAgeTopography.java) |
| Age — Topography — Morphology | Age, Topography, Morphology | Rare | [CheckAgeTopographyMorphology.java](https://github.com/IARC-CSU/CanReg5/blob/release/R45/src/canreg/common/qualitycontrol/CheckAgeTopographyMorphology.java) |
| Basis of Diagnosis | Basis, Morphology, Topography | Rare | [CheckBasis.java](https://github.com/IARC-CSU/CanReg5/blob/release/R45/src/canreg/common/qualitycontrol/CheckBasis.java) |
| Grade | Behaviour, Morphology, Grade | Invalid | [CheckGrade.java](https://github.com/IARC-CSU/CanReg5/blob/release/R45/src/canreg/common/qualitycontrol/CheckGrade.java) |
| Morphology | Morphology | OK (closed option set) | [CheckMorphology.java](https://github.com/IARC-CSU/CanReg5/blob/release/R45/src/canreg/common/qualitycontrol/CheckMorphology.java) |
| Sex — Morphology | Sex, Morphology, Behaviour | Rare | [CheckSexMorphology.java](https://github.com/IARC-CSU/CanReg5/blob/release/R45/src/canreg/common/qualitycontrol/CheckSexMorphology.java) |
| Sex — Topography | Sex, Topography | Invalid | [CheckSexTopography.java](https://github.com/IARC-CSU/CanReg5/blob/release/R45/src/canreg/common/qualitycontrol/CheckSexTopography.java) |
| Topography | Topography | OK (closed option set) | [CheckTopography.java](https://github.com/IARC-CSU/CanReg5/blob/release/R45/src/canreg/common/qualitycontrol/CheckTopography.java) |
| Topography — Behaviour | Topography, Behaviour | Rare | [CheckTopographyBehaviour.java](https://github.com/IARC-CSU/CanReg5/blob/release/R45/src/canreg/common/qualitycontrol/CheckTopographyBehaviour.java) |
| Topography — Morphology | Topography, Morphology | Rare | [CheckTopographyMorphology.java](https://github.com/IARC-CSU/CanReg5/blob/release/R45/src/canreg/common/qualitycontrol/CheckTopographyMorphology.java) |
| Multiple Primary Tester | Morphology Group, Topography Group | Duplicate / Multiple / Unknown | [DefaultMultiplePrimaryTester.java](https://github.com/IARC-CSU/CanReg5/blob/release/R45/src/canreg/common/qualitycontrol/DefaultMultiplePrimaryTester.java) |

