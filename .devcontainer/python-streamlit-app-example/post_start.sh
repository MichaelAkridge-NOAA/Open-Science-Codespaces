#!/bin/bash

# Construct the message
message="## [Click to Open RStudio](https://$CODESPACE_NAME-8501.app.github.dev)
"
# Echo the message to the terminal
echo "$message"

# Append the message to README.md
echo "$message" >> /app/README.md

sleep 10


