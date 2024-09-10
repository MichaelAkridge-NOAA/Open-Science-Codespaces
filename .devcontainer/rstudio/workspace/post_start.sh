#!/bin/bash

# Construct the message
message="## [Click to Open RStudio](https://$CODESPACE_NAME-8787.app.github.dev)"
echo "Debug: Constructed message."

# Echo the message to the terminal
echo "$message"

# Check if the message is already in README.md and append if it's not
echo "Debug: Checking if message is in README.md."
if ! grep -Fqx "$message" /home/rstudio/workspace/README.md; then
    echo "Debug: Message not found in README.md, appending now."
    echo "$message" >> /home/rstudio/workspace/README.md
else
    echo "Debug: Message already in README.md, not appending."
fi

# Docker cleanup section
echo "Debug: Cleaning up Docker resources."

# Remove dangling images
docker image prune -f
echo "Debug: Dangling images removed."

# Remove stopped containers
docker container prune -f
echo "Debug: Stopped containers removed."

# Remove build cache
docker builder prune -f
echo "Debug: Build cache cleaned."

sleep 10
