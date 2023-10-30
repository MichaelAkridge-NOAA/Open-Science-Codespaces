#!/bin/bash
mkdir -p /workspace/app
chmod -R 777 /workspace/app
mkdir -p /workspace/app/ords_secrets
mkdir -p /workspace/app/ords_config
mkdir -p /workspace/app/db-vol
chmod -R 777 /workspace/app/db-vol
chmod -R 777 /workspace/app/ords_config
chmod -R 777 /workspace/app/ords_secrets
echo $CONN_STRING > /workspace/app/ords_secrets/conn_string.txt


# Navigate to the app directory
cd /workspace/app

echo $ORACLE_DOCKER_REGISTRY_PASSWORD | docker login container-registry.oracle.com --username $ORACLE_DOCKER_REGISTRY_USERNAME --password-stdin

docker compose up
