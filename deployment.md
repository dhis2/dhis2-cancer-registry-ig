# Deployment - DHIS2 Cancer Registry Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* **Deployment**

## Deployment

This page provides guidance on deploying and installing the DHIS2 Cancer Registry metadata package. It includes links to key resources, demonstration environments, and information on localising the package for country-specific use.

### Demo Instance

A live demonstration instance is available for exploring the Cancer Registry tracker program, including data entry, data quality checks, and analytics dashboards:

* **Demo instance:** [https://implement.im.dhis2.org/cancer-registry-global/](https://implement.im.dhis2.org/cancer-registry-global/)

Contact the DHIS2 Health team for demo credentials.

### Metadata Downloads

The complete metadata package — including tracker configuration, program rules, option sets, and dashboards — can be downloaded from the DHIS2 metadata package library:

* **Metadata downloads:** [https://dhis2.org/metadata-downloads/](https://dhis2.org/metadata-downloads/)

Look for the **Cancer Registry** package under Non-Communicable Diseases.

### Installation Guide

Step-by-step installation instructions are available in the DHIS2 implementation documentation:

* **Installation guide:** [Cancer Registry Installation Guide](https://docs.dhis2.org/en/implement/health/non-communicable-diseases/cancer-registry/installation.html)
* **General metadata package installation:** [DHIS2 Metadata Package Installation Guide](https://docs.dhis2.org/en/implement/health/dhis2-health-data-toolkit/general-design-principles-for-health-packages/metadata-package-installation.html)

### CanReg5 Export App

A DHIS2 app is available for exporting cancer registry data from DHIS2 to [CanReg5](http://www.iacr.com.fr/index.php?option=com_content&view=article&id=9:canreg5&catid=68&Itemid=445) format. This enables countries to export their data for IARC reporting and analysis.

* **CanReg5 export app:** [https://github.com/dhis2/cancer-registry-app](https://github.com/dhis2/cancer-registry-app)

### Localisation

While the Cancer Registry metadata package is designed as a globally applicable toolkit, certain elements require localisation for country-specific deployment.

#### Address Codes

The **Address** code system and corresponding option set must be customised to reflect the local administrative geography. The global package includes placeholder values that must be replaced with actual province, district, or facility codes used in the implementing country.

The address codes appear in the enrollment section as tracked entity attributes. These are used for:

* Identifying the patient's place of residence
* Enabling geographic analysis and cancer incidence mapping

#### Source Types

The **Source** type option set may need adaptation based on the types of health facilities and data sources used locally. The global package includes general categories (e.g. Hospital, Laboratory, Death certificate) that may need to be expanded or refined.

#### Language

The metadata package is provided in English. Translations can be applied through the DHIS2 translation app or by modifying the metadata directly before import.

#### Organisation Unit Structure

The DHIS2 organisation unit hierarchy must be configured to match the implementing country's health system structure. Cancer registries are typically configured at the national or sub-national level.

