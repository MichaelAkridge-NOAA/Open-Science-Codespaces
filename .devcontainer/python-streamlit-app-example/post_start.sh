#!/bin/bash

# Construct the message
message="## [Click to Open Streamlit App Example | NCRMP Data Explorer & Viz Tool](https://$CODESPACE_NAME-8501.app.github.dev)
"
# Echo the message to the terminal
echo "$message"

# Append the message to README.md
echo "$message" >> /app/README.md

sleep 10


