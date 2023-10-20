#!/bin/bash

echo "Starting post-create setup..."
touch /app/postCreate_executed1.txt

# Install required packages
apk update
apk add --no-cache bash git docker-engine docker-cli docker-compose

# Run the setup_script.sh
echo "Executing setup_script.sh..."
bash /app/setup_script.sh

echo "Post-create setup completed."
touch /app/postCreate_executed2.txt

