# auk 0.1.0

- eBird taxonomy update to August 2017 version, users should download the most recent EBD to ensure the taxonomy is in sync with the new package
- Manually set AWK path with environment variable `AWK_PATH` in `.Renviron` file 
- `auk_distance`, `auk_breeding`, `auk_protocol`, and `auk_project` filters added
- Users can now specify a subset of columns to return when calling auk_filter using the keep and drop arguments
- Many changes suggested by rOpenSci package peer review process, see https://github.com/ropensci/onboarding/issues/136 for details
- New vignette added to aid those wanting to contribute to package development

# auk 0.0.2

- Patch release converting ebird_taxonomy to ASCII to pass CRAN checks

# auk 0.0.1

- First CRAN release