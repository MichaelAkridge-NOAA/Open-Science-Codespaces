#!/bin/bash

# Construct the message
message="## [Click to Open RStudio](https://$CODESPACE_NAME-8787.app.github.dev)
"

# Echo the message to the terminal
echo "$message"

# Check if the message is already in README.md and append if it's not
if ! grep -Fq "$message" /home/rstudio/workspace/README.md; then
  echo "$message" >> /home/rstudio/workspace/README.md
fi

sleep 10
