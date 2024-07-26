# Install RStudio Devcontainer into a Codespace

## Install Via Terminal 
- Run the commands and rebuild 
```
mkdir -p .devcontainer/
wget -P .devcontainer https://raw.githubusercontent.com/MichaelAkridge-NOAA/Open-Science-Codespaces/main/.devcontainer/rstudio-example-04/devcontainer.json
```

## Manually Install 
1. create folder '.devcontainer'
2. create 'devcontainer.json'
3. copy, paste, and save the following into devcontainer.json file

```
{
    "image": "mcr.microsoft.com/devcontainers/base:ubuntu",
    "features": {
        "ghcr.io/rocker-org/devcontainer-features/rstudio-server:0": {
            "singleUser": true
        }
    },
    "postAttachCommand": "rserver",
    "forwardPorts": [
        8787
    ],
    "portsAttributes": {
        "8787": {
            "label": "RStudio IDE"
        }
    }
}

```
4. rebuild codespace
