# Example 04
## Install Docker from Extension Marketplace
-  try https://github.com/coastwatch-training/Workshops/tree/main

## Run Docker Command and create RStudio
```
docker run --rm -d --name rstudio_container -p 8787:8787 -v /workspaces:/home/rstudio/project -e DISABLE_AUTH=true rocker/rstudio

```

- Runs a container from the `rocker/rstudio` image.
- Automatically removes the container when it stops (`--rm`).
- Runs the container in the background (`-d`).
- Maps port 8787 on the host to port 8787 in the container, making RStudio accessible at [http://localhost:8787](http://localhost:8787) (`-p 8787:8787`).
- Mount a specified directory from the host to a directory in the container, allowing file sharing between the host and the container (`-v /my/local/directory:/home/rstudio/myproject`).
- Disables authentication in RStudio Server by setting `DISABLE_AUTH=true` (`-e DISABLE_AUTH=true`).
