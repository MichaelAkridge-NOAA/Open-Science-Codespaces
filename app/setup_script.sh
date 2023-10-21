#!/bin/bash

echo $CONN_STRING > /app/ords_secrets/conn_string.txt

# Navigate to the app directory
cd /app

# Start the Docker daemon
dockerd &

# Wait for the Docker daemon to initialize
sleep 7

# Bring up your services using docker-compose
docker-compose up

echo "setup completed."
