#!/bin/bash

echo "Starting post-create setup..."

# Install required packages
apk update
apk add --no-cache bash git docker-engine docker-cli docker-compose

# Run the setup_script.sh
echo "Executing setup_script.sh..."
bash /app/setup_script.sh

echo "Post-create setup completed."

