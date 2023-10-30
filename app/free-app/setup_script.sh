#!/bin/bash

echo $ORACLE_DOCKER_REGISTRY_PASSWORD | docker login container-registry.oracle.com --username $ORACLE_DOCKER_REGISTRY_USERNAME --password-stdin
mkdir -p /workspaces/Open-Science-Codespaces/app/free-app/ords_secrets
mkdir -p /workspaces/Open-Science-Codespaces/app/free-app/ords_config
mkdir -p /workspaces/Open-Science-Codespaces/app/free-app/db-vol
chmod -R 777 /workspaces/Open-Science-Codespaces/app/free-app/db-vol
chmod -R 777 /workspaces/Open-Science-Codespaces/app/free-app/ords_config
chmod -R 777 /workspaces/Open-Science-Codespaces/app/free-app/ords_secrets
echo $CONN_STRING > /workspaces/Open-Science-Codespaces/app/free-app/ords_secrets/conn_string.txt

gh codespace ports visibility 8181:public -c $CODESPACE_NAME

# Navigate to the app directory
cd /workspaces/Open-Science-Codespaces/app/free-app

# Start the Docker daemon and log output
dockerd

sleep 7

# Bring up your services using docker-compose and log output
docker-compose up -d 
