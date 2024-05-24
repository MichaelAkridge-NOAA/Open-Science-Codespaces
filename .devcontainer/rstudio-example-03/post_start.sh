#!/bin/bash

# Construct the message
message="## [Click to Open RStudio](https://$CODESPACE_NAME-8787.app.github.dev)"
echo "Debug: Constructed message."

# Echo the message to the terminal
echo "$message"

# Check if the message is already in README.md and append if it's not
echo "Debug: Checking if message is in README.md."
if ! grep -Fqx "$message" README.md; then
    echo "Debug: Message not found in README.md, appending now."
    echo "$message" >> README.md
else
    echo "Debug: Message already in README.md, not appending."
fi

sleep 10
