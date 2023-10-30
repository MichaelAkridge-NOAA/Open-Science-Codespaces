#!/bin/bash
echo $ORACLE_DOCKER_REGISTRY_PASSWORD | docker login container-registry.oracle.com --username $ORACLE_DOCKER_REGISTRY_USERNAME --password-stdin
mkdir -p /workspaces/Open-Science-Codespaces/app/test/app/ords_secrets
mkdir -p /workspaces/Open-Science-Codespaces/app/test/app/ords_config
mkdir -p /workspaces/Open-Science-Codespaces/app/test/app/db-vol
chmod -R 777 /workspaces/Open-Science-Codespaces/app/test/app/db-vol
chmod -R 777 /workspaces/Open-Science-Codespaces/app/test/app/ords_config
chmod -R 777 /workspaces/Open-Science-Codespaces/app/test/app/ords_secrets
echo $CONN_STRING > /workspaces/Open-Science-Codespaces/app/test/app/ords_secrets/conn_string.txt


# Navigate to the app directory
cd /workspaces/Open-Science-Codespaces/app/test

docker compose up
