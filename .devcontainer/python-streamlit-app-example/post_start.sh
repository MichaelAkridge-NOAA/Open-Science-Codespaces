#!/bin/bash

# Construct the message
message="## [Click to Open Streamlit App Example | NCRMP Data Explorer & Viz Tool](https://$CODESPACE_NAME-8501.app.github.dev)
"

# Echo the message to the terminal
echo "$message"

# Check if the message is already in README.md and append if it's not
if ! grep -Fq "$message"  /app/README.md; then
  echo "$message" >>  /app/README.md
fi

sleep 10
