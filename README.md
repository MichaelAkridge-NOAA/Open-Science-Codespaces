# Oracle & Apex using Github Codespace Setup

This Codespace sets up a Docker-based Oracle XE and ORDS/Apex application. The configs are defined in the `devcontainer.json` and associated Docker and Docker Compose files.

## Quick Start

1. Clone the repository.
2. Navigate to the repository folder and open the codespace.
3. The codespace will initialize itself by building the container based on the provided Dockerfile and start the services based on the `docker-compose.yml` file.

## Configuration Breakdown

### devcontainer.json

- **Docker Build**: Utilizes the `Dockerfile` located one directory above.
  
- **Workspace**: Sets up `/app` as the default directory.
  
- **Ports**: Several ports are forwarded for access outside the container, including Oracle's port (`1521`) and the Apex port (`8181`).
  
- **Commands**: After the container is created, a setup script is executed (`/app/setup_script.sh`) and the Docker registry is logged into using the provided credentials.
  
- **Environment Variables**: Environmental variables for Oracle and Docker registry are taken from the local repo secrets environment.

### Dockerfile

- **Base Image**: Uses `alpine:3.15.4` as the base image.
  
- **Packages**: Installs essential tools including bash, git, Docker, and Docker Compose.
  
- **Application Setup**: Copies the application files and setup script into the container and makes the script executable.

### docker-compose.yml

- **Database Service (esd-database)**: Sets up an Oracle XE container using the `gvenzl/oracle-xe` image. The Oracle password is taken from an environment variable. Persistent storage for the database is configured with a volume.

- **Mission App Service (mission-app)**: This service depends on the database service being healthy. It uses the Oracle ORDS image from Oracle's container registry. Configurations and secrets for ORDS are mounted as volumes.

- **Network**: All services run in the `esd-database-network` network.

## Prerequisites

- Set the following environment secret variables via the GitHub Secrets in the user section for Codespace:
  - `ORACLE_PASSWORD`: Password for Oracle XE.
  - `DOCKER_REGISTRY_USERNAME`: Username for the Oracle container registry.
  - `DOCKER_REGISTRY_PASSWORD`: Password for the Oracle container registry.
  - `CONN_STRING`: Connection string for the Apex application.

## Important Notes

1. The system will open up to VS code as its installing.
2. view the progress with these commands
- Useful terminal commands
```
docker ps
docker logs mission-app
```
- !!! If there are any persistent data changes, you might want to back up the `db-vol` directory, which contains the database data.
- !!! Remember to ensure  secrets are appropriately set and secured within GitHub, as they contain sensitive data.

## Access Apex
When you forward a port, your application becomes available at the URL 
- https://CODESPACENAME-PORT.app.github.dev

For example:
- https://probable-halibut-p97rvgw99p93rx99-8181.app.github.dev

## Feedback & Contributions

Feedback & contributions are always welcome



