#!/bin/bash

# Construct the message
message="## RStudio is starting. Try it at https://$CODESPACE_NAME-8787.app.github.dev"
message2="```
#view containers
docker ps
#view container logs
docker logs rstudio
```"
# Echo the message to the terminal
echo "$message"

# Append the message to README.md
echo "$message" >> /home/rstudio/workspace/README.md

echo "$message2" >> /home/rstudio/workspace/README.md

sleep 10

