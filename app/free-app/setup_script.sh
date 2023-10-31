#!/bin/bash

message="# Welcome to your Oracle DB & Apex Codespace!
- This readme should open up at same time as the VS code container. 
- If there are any persistent data changes, you might want to backup/export the data 
- Install takes a bit to complete (~20mins)

- Useful terminal commands
### view containers
docker ps
### view container logs
docker logs ords-apex

# Access Oracle Apex (wait for install to complete)
## [Click to Open Apex](https://$CODESPACE_NAME-8181.app.github.dev)
"
# Append the message to README.md
echo "$message$(cat /workspaces/Open-Science-Codespaces/app/free-app/README.md)" > /workspaces/Open-Science-Codespaces/app/free-app/temp_README.md
mv /workspaces/Open-Science-Codespaces/app/free-app/temp_README.md /workspaces/Open-Science-Codespaces/README.md

echo $ORACLE_DOCKER_REGISTRY_PASSWORD | docker login container-registry.oracle.com --username $ORACLE_DOCKER_REGISTRY_USERNAME --password-stdin
mkdir -p /workspaces/Open-Science-Codespaces/app/free-app/ords_secrets
mkdir -p /workspaces/Open-Science-Codespaces/app/free-app/ords_config
mkdir -p /workspaces/Open-Science-Codespaces/app/free-app/db-vol
chmod -R 777 /workspaces/Open-Science-Codespaces/app/free-app/db-vol
chmod -R 777 /workspaces/Open-Science-Codespaces/app/free-app/ords_config
chmod -R 777 /workspaces/Open-Science-Codespaces/app/free-app/ords_secrets
echo $CONN_STRING > /workspaces/Open-Science-Codespaces/app/free-app/ords_secrets/conn_string.txt

# uncomment to make ords/apex visibility public 
#gh codespace ports visibility 8181:public -c $CODESPACE_NAME

# Navigate to the app directory
cd /workspaces/Open-Science-Codespaces/app/free-app

# Start the Docker daemon and log output
dockerd

sleep 7

# Bring up your services using docker-compose and log output
docker-compose up -d 
