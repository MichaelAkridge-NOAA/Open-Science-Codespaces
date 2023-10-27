#!/bin/bash

# Construct the message
message="## RStudio URL: https://$CODESPACE_NAME-8787.app.github.dev

## Notes:
If its not started yet, you can view the progress with these commands in the terminal: 
\`\`\`
### view containers

docker ps

### view container logs
docker logs rstudio
\`\`\`
"
# Echo the message to the terminal
echo "$message"

# Append the message to README.md
echo "$message" >> /home/rstudio/workspace/README.md

sleep 10


