#!/bin/bash

# Clone the GitHub repository
git clone https://github.com/coastwatch-training/CoastWatch-Tutorials.git /workspace/CoastWatch-Tutorials

# Construct the message
message="## [Click to Open RStudio](https://$CODESPACE_NAME-8787.app.github.dev)
## [Click to Open JupyterLab(https://$CODESPACE_NAME-8888.app.github.dev)
"
# Echo the message to the terminal
echo "$message"

# Append the message to README.md
echo "$message" >> /home/rstudio/workspace/README.md

sleep 10