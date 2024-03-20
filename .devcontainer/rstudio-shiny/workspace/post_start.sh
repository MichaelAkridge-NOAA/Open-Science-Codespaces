#!/bin/bash

# Construct the message
message="## [Click to Open Shiny Server](https://$CODESPACE_NAME-3838.app.github.dev)
"
# Echo the message to the terminal
echo "$message"

# Append the message to README.md
echo "$message" >> /home/rstudio/workspace/README.md

sleep 10


