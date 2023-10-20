#!/bin/bash

echo "Starting post-create setup..."
touch /app/postCreate_executed1.txt

# Run the setup_script.sh
echo "Executing setup_script.sh..."
#bash /app/setup_script.sh
/app/setup_script.sh
echo "Post-create setup completed."
touch /app/postCreate_executed2.txt

