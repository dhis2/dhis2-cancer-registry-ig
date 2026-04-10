### Summary

This implementation guide provides a FHIR-based representation of the [DHIS2 Cancer Registry metadata package](https://docs.dhis2.org/en/implement/health/non-communicable-diseases/cancer-registry/design.html), a toolkit designed to support population-based cancer registries in strengthening their routine data management processes and improving the quality, completeness, and timeliness of cancer case registration.

The DHIS2 Cancer Registry tracker is aligned with [CanReg5](http://www.iacr.com.fr/index.php?option=com_content&view=article&id=9:canreg5&catid=68&Itemid=445) data standards for individual-level cancer case registration, as defined by the [International Agency for Research on Cancer (IARC)](https://www.iarc.who.int/). It includes FHIR logical models, terminology (code systems and value sets), and questionnaires that represent the tracker program configuration, including embedded data quality control checks based on CanReg5 validation logic.

The toolkit has been developed with financial support from [Vital Strategies](https://www.vitalstrategies.org/) and technical guidance from IARC.

<div class="note-to-balloters" markdown="1">

**Note:** This implementation guide is under active development. Content is provided for demonstration and review purposes and should not be considered a final, authorised publication.

</div>

### About this Implementation Guide

This implementation guide is structured as follows:

- **[Home](index.html)** — Overview, key links, and background context for the Cancer Registry toolkit.
- **[System Design](system-design.html)** — Description of the DHIS2 Tracker program structure, including enrollment, tumor, source, and follow-up stages with their data elements and sections.
- **[Data Quality Checks](data-quality-checks.html)** — Detailed description of the CanReg5-aligned data quality checks implemented as program rules, covering age, sex, topography, morphology, behaviour, grade, basis of diagnosis, and multiple primary testing.
- **[Profiles & Mappings](profiles.html)** — FHIR resource profiles, extensions, conceptual mappings, and FML StructureMaps that define how DHIS2 Cancer Registry data maps to standard FHIR resources.
- **[Deployment](deployment.html)** — Links to the demo instance, metadata downloads, the CanReg5 export application, and guidance for local adaptation.
- **[References](references.html)** — Key publications, standards, and resources referenced in this guide.
- **[Artifacts](artifacts.html)** — Complete listing of FHIR artifacts defined in this implementation guide, including logical models, code systems, value sets, and questionnaires.

### Background

Cancer represents one of the leading causes of morbidity and mortality worldwide, with the global burden increasingly concentrated in low- and middle-income countries (LMICs) where health systems are often least equipped to respond. Reliable, high-quality data on cancer incidence, case characteristics, and outcomes are essential for informing national cancer control planning, allocating resources, monitoring trends over time, and evaluating the impact of prevention and treatment programmes. Population-based cancer registries are the primary instrument for generating this evidence.

Individual-level cancer case registration offers significant advantages over aggregate reporting. A case-based approach allows for flexible disaggregation by tumour site, morphology, age, sex, geographic origin, and other clinically and epidemiologically relevant variables. It also enables longitudinal follow-up of registered cases, supports deduplication of records across multiple reporting sources, and facilitates the application of systematic data quality checks.

The DHIS2 Cancer Registry tracker is designed to address challenges faced by population-based cancer registries in many LMICs by leveraging the DHIS2 platform — already widely deployed in national health information systems — to support individual-level cancer case registration aligned with CanReg5 data standards.

### Use Case

The system is built around the DHIS2 Tracker data model. Registry staff can record and manage individual cancer cases drawn from multiple notification sources — including hospital records, pathology and cytology laboratory reports, and death certificates — and consolidate them into a single verified registry record. The tracker program supports the capture of core data elements required for population-based cancer registration, including patient demographics, tumour characteristics, basis of diagnosis, and source of notification.

A key feature of the system design is the implementation of systematic data quality control checks at the point of data entry, supporting registries in maintaining the standards of data quality required for valid epidemiological analysis and international comparability. For more details, see the [Data Quality Checks](data-quality-checks.html) page.

> **Warning:** The toolkit is intended as a baseline configuration, fully aligned with CanReg5 standards for streamlined data transfer into CanReg5. System administrators may need to localise the program by adding new data elements or attributes, but modification of the baseline configuration is strongly discouraged, as this would likely break the alignment with CanReg5 and program rule logic of the data quality checks.

### Intended Users

The DHIS2 Cancer Registry system design is intended to meet the needs of users at all levels of the cancer registry system:

- **Cancer registry managers & staff** (national & sub-national) — data users responsible for overseeing the completeness and quality of cancer case registration, monitoring registry operations, and using registry data to support cancer control planning and reporting.
- **Registry data entry staff** — users responsible for the day-to-day capture and management of individual cancer cases within the tracker program.
- **Cancer programme data managers** — users responsible for overseeing data collection workflows, data quality assurance, and reporting functions.
- **System admins / HMIS focal points** — Ministry of Health staff and/or core DHIS2 team responsible for maintaining the DHIS2 system and supporting local adaptation.
- **Implementing partners and technical assistance providers** — organisations providing technical support, including IARC, HISP Groups, and other partners.

### Key Resources

| Resource                           | Link                                                                                                                                                                                                                        |
| ---------------------------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| System Design Guide                | [docs.dhis2.org — Cancer Registry Design](https://docs.dhis2.org/en/implement/health/non-communicable-diseases/cancer-registry/design.html)                                                                                 |
| Installation Guide                 | [docs.dhis2.org — Cancer Registry Installation](https://docs.dhis2.org/en/implement/health/non-communicable-diseases/cancer-registry/installation.html)                                                                     |
| Demo Instance                      | [implement.im.dhis2.org/cancer-registry-global](https://implement.im.dhis2.org/cancer-registry-global/)                                                                                                                     |
| Metadata Downloads                 | [dhis2.org/metadata-downloads](https://dhis2.org/metadata-downloads/)                                                                                                                                                       |
| CanReg5 Export Application         | [github.com/dhis2/cancer-registry-app](https://github.com/dhis2/cancer-registry-app)                                                                                                                                        |
| CanReg5 Software (IARC)            | [IACR — CanReg5](http://www.iacr.com.fr/index.php?option=com_content&view=article&id=9:canreg5&catid=68&Itemid=445)                                                                                                         |
| CanReg5 Source Code                | [github.com/IARC-CSU/CanReg5](https://github.com/IARC-CSU/CanReg5/tree/release/R45)                                                                                                                                         |
| IARC Cancer Registration Standards | [Cancer Registration: Principles and Methods (IARC Scientific Publications No. 160)](https://publications.iarc.who.int/Book-And-Report-Series/Iarc-Scientific-Publications/Cancer-Registration-Principles-And-Methods-2021) |

### Disclaimer

The specification herewith documented is a draft working specification and may not be used for any implementation purposes. This draft is provided without warranty of completeness or consistency, and the official publication supersedes this draft. No liability can be inferred from the use or misuse of this specification or its consequences.
