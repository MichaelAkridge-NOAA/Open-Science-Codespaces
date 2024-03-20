# Open Science Codespaces
<img src="./docs/logo.JPG" align="right" alt="logo" width="400"/>

Quick & Easy Cloud Working Environments(Codespaces). This repo setups Github Codespaces for RStudio, Oracle and more. These can be used for
- Reproducible Science Setups
- Workshops
- Portable Development
- and more!

## List of Codespace
1. **[RStudio Codespace](#rstudio-codespace)**
2. **[Environmental Data Summary (EDS) Codespace](https://github.com/MichaelAkridge-NOAA/ncei_eds_codespace)**
3. **[](#-codespace)**
***
# RStudio Codespace
For RStudio, just click this button to start codespace

[![Open RStudio in GitHub Codespaces](./docs/badge_rstudio.png)](https://codespaces.new/MichaelAkridge-NOAA/Open-Science-Codespaces?devcontainer_path=.devcontainer%2Frstudio%2Fdevcontainer.json)
- this codespace uses default RStudio docker image from https://rocker-project.org/
- update ".devcontainer/rstudio/docker-compose.yml" file to select desired setup
```
# replace image(rocker/rstudio:latest) in docker-compose.yml file
# with any of the ones below or at https://hub.docker.com/u/rocker
# Examples
rocker/tidyverse
rocker/geospatial
rocker/shiny
```
| Codespace   | QuickStart Link | Image | Description | 
| ----------- | ----------- |----------- | ----------- |
| RStudio | [![Open RStudio in GitHub Codespaces](./docs/badge_rstudio.png)](https://codespaces.new/MichaelAkridge-NOAA/Open-Science-Codespaces?devcontainer_path=.devcontainer%2Frstudio%2Fdevcontainer.json)   | rocker/rstudio     | Adds RStudio Server. Install R from source and set RSPM as default CRAN mirror	|
| RStudio Tidyverse | link   | rocker/tidyverse | Adds tidyverse packages & devtools | 
| RStudio Verse | link   | rocker/verse | Adds tex & publishing-related package | 
| RStudio Geospatial | link   | rocker/geospatial | Adds geospatial packages | 
| RStudio Shiny | link   | rocker/shiny | Adds shiny server | 
| RStudio Shiny Verse | link   | rocker/shiny-verse | Adds tidyverse packages to shiny | 
### Screenshots 
![](https://github.com/MichaelAkridge-NOAA/Open-Science-Codespaces/blob/55588538a6e3948e27c2a2914b7018c344e18afe/docs/rs_01.png)
![](https://github.com/MichaelAkridge-NOAA/Open-Science-Codespaces/blob/55588538a6e3948e27c2a2914b7018c344e18afe/docs/rs_02.png)
***
# [Environmental Data Summary (EDS) Codespace](https://github.com/MichaelAkridge-NOAA/ncei_eds_codespace)
[![Open RStudio in GitHub Codespaces](./docs/badge_rstudio.png)](https://codespaces.new/MichaelAkridge-NOAA/ncei_eds_codespace?quickstart=1)

RStudio Github Codespace with EDS project files. The EDS allows users to download/filter/extract/summarize large amounts of gridded and tabular data given user-defined time stamps and geographical coordinates. The various external environmental data summarized at individual survey sites can aid scientists to assess and understand how living marine resources are impacted by the environmental variabilities. 
## [(Learn More)](https://github.com/MichaelAkridge-NOAA/ncei_eds_codespace)
![](https://github.com/MichaelAkridge-NOAA/ncei_eds_codespace/blob/0db0a17a5ac59a0a77fb52568dd1841b45b5213b/docs/02.png)
![](https://github.com/MichaelAkridge-NOAA/ncei_eds_codespace/blob/0db0a17a5ac59a0a77fb52568dd1841b45b5213b/docs/01.png)

***

----------
#### Disclaimer
This repository is a scientific product and is not official communication of the National Oceanic and Atmospheric Administration, or the United States Department of Commerce. All NOAA GitHub project content is provided on an ‘as is’ basis and the user assumes responsibility for its use. Any claims against the Department of Commerce or Department of Commerce bureaus stemming from the use of this GitHub project will be governed by all applicable Federal law. Any reference to specific commercial products, processes, or services by service mark, trademark, manufacturer, or otherwise, does not constitute or imply their endorsement, recommendation or favoring by the Department of Commerce. The Department of Commerce seal and logo, or the seal and logo of a DOC bureau, shall not be used in any manner to imply endorsement of any commercial product or activity by DOC or the United States Government.

##### License
See the [LICENSE.md](./LICENSE.md) for details

##### Feedback & Contributions
New to codespaces, so feedback & contributions are welcome.
