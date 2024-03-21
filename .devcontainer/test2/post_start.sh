#!/bin/bash

# Clone the GitHub repository
git clone https://github.com/coastwatch-training/CoastWatch-Tutorials.git /workspaces/Open-Science-Codespaces/CoastWatch-Tutorials

# Construct the message
message="## [Click to Open RStudio](https://$CODESPACE_NAME-8787.app.github.dev)
## [Click to Open Jupyte(https://$CODESPACE_NAME-8888.app.github.dev?editor=jupyter)
"
# Echo the message to the terminal
echo "$message"

# Append the message to README.md
echo "$message" >> ./README.md

sleep 10 
