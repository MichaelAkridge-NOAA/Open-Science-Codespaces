# Oracle Free Database & ORDS-Apex using Github Codespace Setup

This Codespace sets up a Docker-based Oracle Free(or XE, etc) and ORDS/Apex application. Configs are defined in the `devcontainer.json` file & associated Docker and Docker Compose files.

## Quick Start

1. Clone the repository.
2. Navigate to Github codespace.
	- https://github.com/codespaces
3. Select 'New Codespace' and repository cloned in step 1.
4. The codespace will initialize itself by building the container based on the provided Dockerfile and start the services based on the `docker-compose.yml` file.

## Prerequisites
- <mark>Create an Oracle account for access to the Oracle Image Registry</mark>
  - [Oracle Image/Container Registry](https://container-registry.oracle.com/ords/f?p=113:10)

- Set the following repo secret variables via the GitHub Secrets in the user section for Codespace:
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

## Important Notes

1. The system will open up to VS code editor as its installing in the background.
2. To view the progress of the install, use these commands
- Useful terminal commands
```
#view containers
docker ps
#view container logs
docker logs mission-app
```
3. !!! If there are any persistent data changes, you might want to back up the `db-vol` directory, which contains the database data.
4. !!! Remember to ensure  secrets are appropriately set and secured within GitHub, as they contain sensitive data.

## Access Database & Apex
After install,  your application becomes available at the URL based on port forwared in code(8181).  
- https://CODESPACENAME-PORT.app.github.dev

For example:
- https://probable-halibut-p97rvgw99p93rx99-8181.app.github.dev

## Feedback & Contributions

New to codespaces, so feedback & contributions are welcome.



