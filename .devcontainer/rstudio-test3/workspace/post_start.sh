#!/bin/bash

# Construct the message
message="RStudio is starting. Try it at https://$CODESPACE_NAME-8787.app.github.dev"

# Echo the message to the terminal
echo "$message"

# Append the message to README.md
echo "$message" >> /path/to/README.md

sleep 10

