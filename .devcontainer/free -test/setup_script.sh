#!/bin/bash
mkdir -p /app
chmod -R 777 /app
mkdir -p /app/ords_secrets
mkdir -p /app/ords_config
mkdir -p /app/db-vol
chmod -R 777 /app/db-vol
chmod -R 777 /app/ords_config
chmod -R 777 /app/ords_secrets
echo $CONN_STRING > /app/ords_secrets/conn_string.txt


# Navigate to the app directory
cd /app

echo $ORACLE_DOCKER_REGISTRY_PASSWORD | docker login container-registry.oracle.com --username $ORACLE_DOCKER_REGISTRY_USERNAME --password-stdin

docker compose up
