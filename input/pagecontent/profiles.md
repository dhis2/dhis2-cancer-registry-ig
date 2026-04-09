This page documents the manually authored FHIR resource profiles, mappings, and examples in this implementation guide. These artifacts define how the DHIS2 Cancer Registry (CanReg5) tracker programme maps to standard FHIR resources using an **Encounter-based architecture**.

For the auto-generated artifacts (logical models, questionnaires, code systems, and value sets derived from the DHIS2 Cancer Registry metadata package), see the [Artifact Index](artifacts.html).

### Generated vs Authored Artifacts

### Architecture |

### Resource Profiles

#### Patient

| Profile                                          | Base    | Description                                                                                     |
| ------------------------------------------------ | ------- | ----------------------------------------------------------------------------------------------- |
| [CRPatient](StructureDefinition-cr-patient.html) | Patient | CanReg5 patient with required REGNO identifier (≥8 chars), family name, gender, and birth date. |

#### EpisodeOfCare

| Profile                                                                                | Base          | Description                                                          |
| -------------------------------------------------------------------------------------- | ------------- | -------------------------------------------------------------------- |
| [CRCancerRegistrationEpisode](StructureDefinition-cr-cancer-registration-episode.html) | EpisodeOfCare | Overall cancer registration enrollment. Groups all stage encounters. |

### Mappings

### Examples
