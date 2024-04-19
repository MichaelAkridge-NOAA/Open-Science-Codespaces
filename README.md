# Open Science Codespaces
<img src="./docs/logo.JPG" align="right" alt="logo" width="400"/>

Quick & Easy Cloud Working Environments(Codespaces). This repo setups Github Codespaces for R/RStudio, python and more. These can be used for
- Reproducible Science Setups
- Workshops
- Portable Development
- and more!

### Contact
- Michael.Akridge@noaa.gov

### List of Codespaces
1. **[R Codespaces](#r-codespaces)**
    - RStudio
    - Tidyverse
    - Verse
    -  Geospatial
    - Shiny Server
    - [Environmental Data Summary (EDS) Codespace](https://github.com/MichaelAkridge-NOAA/ncei_eds_codespace)
2. **[Python Codespaces](#python-codespaces)**
    - [Python Streamlit App Example | Data Explorer & Viz Tool](#python-codespaces)
    - [Other Python Codespaces](#links-to-various-python-based-codespaces)
4. **[Resources, Links & More Info](#resources-more-info)**

### Looking for More? Try the Codespace Designer
<a href="https://michaelakridge-noaa.github.io/codespace-designer/" align="right">
<img src="https://github.com/MichaelAkridge-NOAA/codespace-designer/blob/1d07bea79fa0034c84a759061f353b3c77dcefb3/docs/button.png" alt="Open Codespace Designer">
</a>

- Use to configure a GitHub Codespace environment
- Powered by Github Pages to help design a codespace devcontainer file with NMFS-Opensci data science images
  - Link: https://michaelakridge-noaa.github.io/codespace-designer/
***

# R Codespaces

Just click the button below to quickly start a codespace:

| Codespace   | QuickStart Link  | Description | 
| ----------- | ----------- |----------- |
| RStudio | [![Open RStudio in GitHub Codespaces](./docs/badge_rstudio.png)](https://codespaces.new/MichaelAkridge-NOAA/Open-Science-Codespaces?devcontainer_path=.devcontainer%2Frstudio%2Fdevcontainer.json)   |  Adds RStudio Server. Install R from source and set RSPM as default CRAN mirror	|
| RStudio Tidyverse | [![Open in GitHub Codespaces](./docs/badge_rstudio_tidyverse.png)](https://codespaces.new/MichaelAkridge-NOAA/Open-Science-Codespaces?devcontainer_path=.devcontainer%2Frstudio-tidyverse%2Fdevcontainer.json)   |Adds tidyverse packages & devtools. R packages for data science | 
| RStudio Verse | [![Open in GitHub Codespaces](./docs/badge_rstudio_tidyverse.png)](https://codespaces.new/MichaelAkridge-NOAA/Open-Science-Codespaces?devcontainer_path=.devcontainer%2Frstudio-verse%2Fdevcontainer.json)  | Adds tex & publishing-related package to tidyverse | 
| RStudio Geospatial |   [![Open in GitHub Codespaces](./docs/badge_rstudio_geospatial.png)](https://codespaces.new/MichaelAkridge-NOAA/Open-Science-Codespaces?devcontainer_path=.devcontainer%2Frstudio-geospatial%2Fdevcontainer.json)   | Adds geospatial packages | 
| RStudio Shiny Server| [![Open in GitHub Codespaces](./docs/badge_rstudio_shiny.png)](https://codespaces.new/MichaelAkridge-NOAA/Open-Science-Codespaces?devcontainer_path=.devcontainer%2Frstudio-shiny%2Fdevcontainer.json)   | Adds shiny server | 

### Screenshots 
![](./docs/rs_01.png)
![](./docs/rs_02.png)
![](./docs/rs_shiny_01.png)

***
# [Environmental Data Summary (EDS) Codespace](https://github.com/MichaelAkridge-NOAA/ncei_eds_codespace)
[![Open RStudio in GitHub Codespaces](./docs/badge_rstudio.png)](https://codespaces.new/MichaelAkridge-NOAA/ncei_eds_codespace?quickstart=1)

RStudio Github Codespace with EDS project files. The EDS allows users to download/filter/extract/summarize large amounts of gridded and tabular data given user-defined time stamps and geographical coordinates. The various external environmental data summarized at individual survey sites can aid scientists to assess and understand how living marine resources are impacted by the environmental variabilities. 
## [(Learn More)](https://github.com/MichaelAkridge-NOAA/ncei_eds_codespace)
![](https://github.com/MichaelAkridge-NOAA/ncei_eds_codespace/blob/0db0a17a5ac59a0a77fb52568dd1841b45b5213b/docs/02.png)
![](https://github.com/MichaelAkridge-NOAA/ncei_eds_codespace/blob/0db0a17a5ac59a0a77fb52568dd1841b45b5213b/docs/01.png)
***
# Python Codespaces
## Streamlit Python App Codespace Example | Data Explorer & Viz Tool
[![Open in GitHub Codespaces](./docs/badge_python.png)](https://codespaces.new/MichaelAkridge-NOAA/Open-Science-Codespaces?devcontainer_path=.devcontainer%2Fpython-streamlit-app-example%2Fdevcontainer.json)
- Exploratory Data Analysis & Visualization Tool. 
- Allows users to explore and visualize recent NOAA's National Coral Reef Monitoring Program(NCRMP) data or upload their own.
- This codespace example runs a python Streamlit App with Pygwalker(https://github.com/Kanaries/pygwalker) for data analysis and data visualization.
![](./docs/py_data_tool_00.png)
![](./docs/py_data_tool_01.png)

## Links to various python based codespaces.

| Codespace  | QuickStart Link | Description | 
| ----------- | ----------- |----------- |
| Jupyter Notebook  | [![Open in GitHub Codespaces](https://github.com/codespaces/badge.svg)](https://codespaces.new/github/codespaces-jupyter)  |[github/codespaces-jupter](https://github.com/github/codespaces-jupyter) | 
| Jupyter Data Science  | [![Open in GitHub Codespaces](https://github.com/codespaces/badge.svg)](https://codespaces.new/devcontainers-community/templates-jupyter-datascience-notebooks) |[devcontainers-community/jupyter-datascience-notebooks](https://github.com/devcontainers-community/templates-jupyter-datascience-notebooks) | 
| Flask  | [![Open in GitHub Codespaces](https://github.com/codespaces/badge.svg)](https://codespaces.new/github/codespaces-flask) | [github/codespaces-flask](https://github.com/github/codespaces-flask)| 
| Anaconda  |  | [devcontainers/templates/anaconda](https://github.com/devcontainers/templates/tree/main/src/anaconda)| 
| Datascience Py & R  |   | [microsoft/datascience-py-r](https://github.com/microsoft/datascience-py-r)| 
***
# Resources & More Info
## Codespaces/Docker
- About Github Codespaces: https://github.com/features/codespaces
- About using images, dockerfiles, compose, and devcontainers: https://containers.dev/guide/dockerfile
- About Docker: https://docs.docker.com/

## Python
- Streamlit (https://streamlit.io/) turns data scripts into shareable web apps
- Pygwalker(https://github.com/Kanaries/pygwalker)  for data analysis and data visualization

## R
- The R codespaces use the images from the Rocker Project. For more info, please visit:
  - https://rocker-project.org/images/
  - https://hub.docker.com/u/rocker

----------
#### Disclaimer
This repository is a scientific product and is not official communication of the National Oceanic and Atmospheric Administration, or the United States Department of Commerce. All NOAA GitHub project content is provided on an ‘as is’ basis and the user assumes responsibility for its use. Any claims against the Department of Commerce or Department of Commerce bureaus stemming from the use of this GitHub project will be governed by all applicable Federal law. Any reference to specific commercial products, processes, or services by service mark, trademark, manufacturer, or otherwise, does not constitute or imply their endorsement, recommendation or favoring by the Department of Commerce. The Department of Commerce seal and logo, or the seal and logo of a DOC bureau, shall not be used in any manner to imply endorsement of any commercial product or activity by DOC or the United States Government.

##### License
See the [LICENSE.md](./LICENSE.md) for details
