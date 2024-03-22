#!/bin/bash

# Clone the GitHub repository
git clone https://github.com/coastwatch-training/CoastWatch-Tutorials.git /home/rstudio/workspace/CoastWatch-Tutorials

# Construct the message
message="
RStudio editor: https://$CODESPACE_NAME-8787.app.github.dev

JupyterLab editor: https://$CODESPACE_NAME.github.dev?editor=jupyter

"
# Echo the message to the terminal
echo "$message"

# Append the message to README.md
echo "$message" >> ./README.md

echo "
Open the RStudio editor here: https://$CODESPACE_NAME-8787.app.github.dev
   - (This may take a few seconds to load, retry if necessary)

Open the JupyterLab editor here: https://$CODESPACE_NAME.github.dev?editor=jupyter
   - (This may take a few seconds to load, retry if necessary)

"
sleep 10 
