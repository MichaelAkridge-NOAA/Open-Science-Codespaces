#!/bin/bash

# Set up ORDS secrets
echo 'CONN_STRING=user/password@hostname:port/service_name' > /app/ords_secrets/conn_string.txt

# Navigate to the app directory
cd /app

# Start the Docker daemon
dockerd &

# Wait for the Docker daemon to initialize
sleep 5

# Bring up your services using docker-compose
docker-compose up -d
docker-compose -f /app/docker-compose.yml up -d

# Stop all running containers after setup (can be removed if you want the services to keep running)
docker-compose stop
