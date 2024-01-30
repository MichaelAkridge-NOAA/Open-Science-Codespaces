#!/bin/bash

# Construct the message
message="## [Click to Open Jupyter](https://$CODESPACE_NAME.app.github.dev)
"
# Echo the message to the terminal
echo "$message"

# Append the message to README.md
echo "$message" >> /home/workspace/README.md

sleep 10


