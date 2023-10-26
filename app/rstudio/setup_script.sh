#!/bin/bash

LOGFILE="/app/docker_log.txt"

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
EOL

# Navigate to the app directory
cd /app

# Start the Docker daemon and log output
dockerd &>> "$LOGFILE" &

# Log the waiting
log "Waiting for the Docker daemon to initialize..."
sleep 7

# Bring up your services using docker-compose and log output
docker-compose up &>> "$LOGFILE"
cat <<EOL >> "$LOGFILE"
sleep 30

# Open the browser
open http://localhost:8787
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

