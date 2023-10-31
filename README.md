# Open Science Codespaces
Create & Access Complete Codespaces quickly and easily. This repo setups temporary development Codespaces.  
## List of Codespaces
1. **[RStudio Codespace](#rstudio-codespace)**
2. **[Environmental Data Summary (EDS) Codespace](https://github.com/MichaelAkridge-NOAA/ncei_eds_codespace)**
3. **[Oracle Database & ORDS/APEX Dev Space](#oracle-codespace)**
***
# RStudio Codespace
For RStudio, just click this button to start codesapce

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
***
# [Environmental Data Summary (EDS) Codespace](https://github.com/MichaelAkridge-NOAA/ncei_eds_codespace)
[![Open RStudio in GitHub Codespaces](./docs/badge_rstudio.png)](https://codespaces.new/MichaelAkridge-NOAA/ncei_eds_codespace?quickstart=1)

RStudio Github Codespace with EDS project files. The EDS allows users to download/filter/extract/summarize large amounts of gridded and tabular data given user-defined time stamps and geographical coordinates. The various external environmental data summarized at individual survey sites can aid scientists to assess and understand how living marine resources are impacted by the environmental variabilities. 
## [(Learn More)](https://github.com/MichaelAkridge-NOAA/ncei_eds_codespace)
![](https://github.com/MichaelAkridge-NOAA/ncei_eds_codespace/blob/0db0a17a5ac59a0a77fb52568dd1841b45b5213b/docs/02.png)
![](https://github.com/MichaelAkridge-NOAA/ncei_eds_codespace/blob/0db0a17a5ac59a0a77fb52568dd1841b45b5213b/docs/01.png)

***
# Oracle Codespace
### For an Oracle Database & ORDS/Apex Codespace, checkout the quickstart below
The following details deploying an Oracle Free(or XE, etc) database and ORDS/Apex application for development and testing. Configs are defined in the `devcontainer.json` file & associated Docker and Docker Compose files. Workflow can be applied to other docker deployed apps and additional data can be added and/or installed.
# Table of Contents
1. **[Quick Start](#quick-start)**
2. **[Prerequisites](#prerequisites)**
3. **[Config Breakdown](#configuration-breakdown)**
5. **[Startup](#startup)**
6. **[Access Database & Apex](#access-database--apex)**
7. **[Start/Stop Codespace](#configuration-breakdown)**
8. **[Disclaimer](#disclaimer)**
9. **[License](#license)**
***
## Quick Start
1. Clone this repository.
2. Review Prerequisites, and ensure that all have been satisfied before proceeding.
4. Click Deploy 
5. And done. The codespace will initialize itself by building the container based on the provided Dockerfile and start the services based on the `docker-compose.yml` file.

## Prerequisites
1. <mark>Create an Oracle account for access to the Oracle Image Registry (needed for access to Oracle Docker Images)</mark>
	- [Oracle Image/Container Registry](https://container-registry.oracle.com/ords/f?p=113:10)

2. Set the following secret variables via GitHub Secrets([learn more](https://docs.github.com/en/actions/security-guides/using-secrets-in-github-actions)) in the user section for Codespace. Secrets are encrypted environment variables that you create in a repository or organization to store sensitive information.
  - `ORACLE_DOCKER_REGISTRY_USERNAME`: Username for the Oracle container registry.
  - `ORACLE_DOCKER_REGISTRY_PASSWORD`: Password for the Oracle container registry.
  - `ORACLE_PASSWORD`: Set Sys Password for the Oracle Free(or XE)
  - `CONN_STRING`: If using Oracle Free, set connection string for ORDS/Apex. (XEPDB1 for XE and FREEPDB1 for free)
  - `XE_CONN_STRING`: If using Oracle XE, set connection string for ORDS/Apex
```
# Example for Oracle Free
CONN_STRING=sys/<insert-passwrod-here>@database:1521/FREEPDB1

# Example for Oracle XE
CONN_STRING=sys/<insert-passwrod-here>@database:1521/XEPDB1
```
![](./docs/01.png)
![](./docs/02.png)
![](./docs/03.png)

3. Udpate README.md Github Codespace Deeplinks for Oracle Free & XE (https://docs.github.com/en/codespaces/setting-up-your-project-for-codespaces/setting-up-your-repository/facilitating-quick-creation-and-resumption-of-codespaces)

# Deploy
### Oracle Free(or XE) Database & ORDS-Apex App using Github Codespaces
Once Prerequisites are met, you can deploy with a click of these buttons. 
[![Open Oracle Free in GitHub Codespaces](./docs/badge_free.png)](https://codespaces.new/MichaelAkridge-NOAA/Open-Science-Codespaces?quickstart=1&devcontainer_path=.devcontainer%2Foracle_free%2Fdevcontainer.json)[![Open Oracle XE in GitHub Codespaces](./docs/badge_xe.png)](https://codespaces.new/MichaelAkridge-NOAA/Open-Science-Codespaces?quickstart=1&devcontainer_path=.devcontainer%2Foracle_xe%2Fdevcontainer.json)

## Startup
1. The system will open up to VS code editor as its installing via docker in the background.

![](./docs/11.png)

2. To view the progress of the install, use these commands or checkout the log file
![](./docs/11b.png)
![](./docs/12.png)
- Useful terminal commands
```
#view containers
docker ps
#view container logs
docker logs free-database
docker logs ords-apex
```
![](./docs/11d.png)

## Access Database & Apex
After install,  your application becomes available at the URL based on port forwared in code(8181).  
- https://CODESPACENAME-PORT.app.github.dev
For example:
- https://probable-halibut-p97rvgw99p93rx99-8181.app.github.dev

![](./docs/13.png)
![](./docs/14.png)

## Start/Stop Codespace
![](./docs/15.png)
- You can stop, start, and delete the codespace at anytime on the codespace page: https://github.com/codespaces/
- !!! Note this is a temp dev space. No changes are saved. If there are any persistent data changes you need, you might want to back up the `db-vol` directory, which contains the database data & perform other due diligence.
## Configuration Breakdown

### devcontainer.json

- **Docker Build**: Utilizes the `Dockerfile` located one directory above.
  
- **Workspace**: Sets up `/app` as the default directory.
  
- **Ports**: A couple ports are forwarded for access outside the container, including Oracle's port (`1521`) and the ORDS/Apex port (`8181`).
  
- **Commands**: After the container is created, a setup script is executed (`/app/setup_script.sh`) and the Docker registry is logged into using the provided credentials. Install takes time(~20mins). 
  
- **Environment Variables**: Environmental variables for Oracle DB, and Oracle registry are taken from the local repo secrets environment.

### Dockerfile

- **Base Image**: Uses `alpine:3.15.4` as the base image.
  
- **Packages**: Installs essential tools including bash, git, Docker, and Docker Compose.
  
- **Application Setup**: Copies the application files and setup script into the container and makes the script executable. Starts db & apex install. 

### docker-compose.yml
![](./docs/2022_docker_stack.png)
- **Database Service (free-database)**: Sets up an Oracle Free(or XE) container using the `https://hub.docker.com/r/gvenzl/oracle-free` (or xe) image. The Oracle password is taken from an environment variable. Persistent storage for the database is configured with a volume. 

- **ORDS/Apex Service (ords-apex)**: This service depends on the database service being healthy. It uses the Oracle ORDS image from Oracle's container registry(container-registry.oracle.com). Configurations and secrets for ORDS are mounted as volumes.

- **Network**: All services run in the `database-network` network.
----------
#### Disclaimer
This repository is a scientific product and is not official communication of the National Oceanic and Atmospheric Administration, or the United States Department of Commerce. All NOAA GitHub project content is provided on an ‘as is’ basis and the user assumes responsibility for its use. Any claims against the Department of Commerce or Department of Commerce bureaus stemming from the use of this GitHub project will be governed by all applicable Federal law. Any reference to specific commercial products, processes, or services by service mark, trademark, manufacturer, or otherwise, does not constitute or imply their endorsement, recommendation or favoring by the Department of Commerce. The Department of Commerce seal and logo, or the seal and logo of a DOC bureau, shall not be used in any manner to imply endorsement of any commercial product or activity by DOC or the United States Government.

##### License
See the [LICENSE.md](./LICENSE.md) for details

##### Feedback & Contributions
New to codespaces, so feedback & contributions are welcome.
