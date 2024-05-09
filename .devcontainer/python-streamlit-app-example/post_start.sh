#!/bin/bash

# Construct the message
message="## [Click to Open Streamlit App Example | NCRMP Data Explorer & Viz Tool](https://$CODESPACE_NAME-8501.app.github.dev)"
echo "Debug: Constructed message."

# Echo the message to the terminal
echo "$message"

# Check if the message is already in README.md and append if it's not
echo "Debug: Checking if message is in README.md."
if ! grep -Fqx "$message" /app/README.md; then
    echo "Debug: Message not found in README.md, appending now."
    echo "$message" >> /app/README.md
else
    echo "Debug: Message already in README.md, not appending."
fi

sleep 10
