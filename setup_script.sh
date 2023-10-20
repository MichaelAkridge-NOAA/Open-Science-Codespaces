#!/bin/bash

# Set up ORDS secrets
mkdir -p /app/ords_secrets
mkdir -p /app/ords_config
mkdir -p /app/db-vol
chmod -R 777 /app/db-vol
chmod -R 777 /app/ords_config
chmod -R 777 /app/ords_secrets
echo 'CONN_STRING=user/password@hostname:port/service_name' > /app/ords_secrets/conn_string.txt

# Navigate to the app directory
cd /app

# Start the Docker daemon
dockerd &

# Wait for the Docker daemon to initialize
sleep 7

# Bring up your services using docker-compose
docker-compose up

# Stop all running containers after setup (can be removed if you want the services to keep running)
#docker-compose stop
