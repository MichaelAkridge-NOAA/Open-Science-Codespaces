#!/bin/bash
LOGFILE="/workspaces/Open-Science-Codespaces/app/test/app/docker_log.txt"

log() {
    echo "$1" | tee -a "$LOGFILE"
}

# Create the log file and set permissions
touch "$LOGFILE"
chmod 777 "$LOGFILE"
# Initial logs or information
cat <<EOL >> "$LOGFILE"
======================================================================
                             Setup Initiated
- Starting docker-compose services.
======================================================================
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

# Start the Docker daemon and log output
dockerd &>> "$LOGFILE" &

# Log the waiting
log "Waiting for the Docker daemon to initialize..."
sleep 7

# Bring up your services using docker-compose and log output
docker-compose up &>> "$LOGFILE"
cat <<EOL >> "$LOGFILE"
======================================================================
                          Docker Compose Finished
- Moving on to the next commands or steps.
======================================================================
EOL
# Stop all running containers after setup (can be removed if you want the services to keep running)
#docker-compose stop &>> "$LOGFILE"

cat <<EOL >> "$LOGFILE"
======================================================================
                             Setup Completed
- All tasks finished successfully.
======================================================================
EOL

