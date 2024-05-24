# Example 04 - Install RStudio in Codespace via Docker Command

## Install Docker from Extension Marketplace
- Start a codesapce for any project
- example: https://github.com/pwoodworth-jefcoats/climate-indicators

## Run Docker Command and create RStudio
```
docker run --rm -d --name rstudio_container -p 8787:8787 -v /workspaces:/home/rstudio/project -e DISABLE_AUTH=true rocker/rstudio
```
### Details

- Runs a container from the `rocker/rstudio` image.
- Automatically removes the container when it stops (`--rm`).
- Runs the container in the background (`-d`).
- names the container 'rstudio_container'
- Maps port 8787 on the host to port 8787 in the container, making RStudio accessible at (`-p 8787:8787`).
- Mount a specified directory from the host to a directory in the container, allowing file sharing between the host and the container (`-v /workspaces:/home/rstudio/project`).
- Disables authentication in RStudio Server by setting `DISABLE_AUTH=true` (`-e DISABLE_AUTH=true`) to use without logging in

