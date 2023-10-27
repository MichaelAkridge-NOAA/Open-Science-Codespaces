#!/bin/bash
mkdir -p /workspace
chmod -R 777 /workspace
LOGFILE="/workspace/docker_log.txt"

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
# Set up ORDS secrets
mkdir -p /workspace/ords_secrets
mkdir -p /workspace/ords_config
mkdir -p /workspace/db-vol
chmod -R 777 /workspace/db-vol
chmod -R 777 /workspace/ords_config
chmod -R 777 /workspace/ords_secrets
echo $CONN_STRING > /workspace/ords_secrets/conn_string.txt

# Navigate to the workspace directory
cd /workspace

# Start the Docker daemon and log output
dockerd &>> "$LOGFILE" &

# Log the waiting
log "Waiting for the Docker daemon to initialize..."
sleep 7
message="## Oracle & ORDS/Apex is installing. ~20mins. When ready, use this URL to access
## URL: https://$CODESPACE_NAME-8181.app.github.dev


## Notes:
Takes a bit to install. View docker_log.txt or check the progress with these commands in the terminal: 
\`\`\`
### view containers

docker ps

### view container logs
docker logs ords-apex
docker logs ords-apex
\`\`\`
"
# Echo the message to the terminal
echo "$message"

# Append the message to README.md
echo "$message" >> /workspace/README.md
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

