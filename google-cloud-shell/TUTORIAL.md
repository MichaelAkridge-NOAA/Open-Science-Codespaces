# Welcome to Your Google Cloud Shell Open Science Tutorial!

This tutorial was made to help users explore NMFS-OpenSci container images and environments tailored for open science & reproducible research.
Check out the NMFS-OpenSci Image Repository for more details:
- https://github.com/nmfs-opensci/container-images

## Today you will learn the basics of:
- Using Docker Compose to set up and run services
- And deploy a pre-configured open science environment that launches Jupyter Lab with RStudio

### Time Needed
- Less than 5 mins

## Step 1: Running the Environment
In your terminal <walkthrough-cloud-shell-icon></walkthrough-cloud-shell-icon> below, run the following command:
```
docker compose up
```
### What is Docker Compose?

Docker Compose is a tool that allows you to define and manage Docker applications. With a simple YAML file, you can configure your application's services, networks, and volumes.

### Why use Docker Compose?

- Simplifies management
- Provides a single command to start all services
- Facilitates reproducible environments

### This command will:
- Pull the 'py-rocket-base' image from the NMFS Open-Sci Github Container Registry
- Create and start the py-rocket-base container.
- Maps port 8080 on the shell host to port 8080 in the container.
- And starts up Jupyter Lab & RStudio with the specified settings.

## Step 2: Access Jupyter Lab & RStudio
Once the container is running, you can visit it by::
- Clicking the Web Preview button <walkthrough-web-preview-icon></walkthrough-web-preview-icon>
- and select "Preview on port 8080" To Access your Environment

### FAQ: How to Tell if its running?
You should see a message in the terminal once it's ready, similar to:
"py-rocket-base  | [I 2024-06-11 02:01:34.895 ServerApp] Jupyter Server 2.14.1 is running at:"

## Congratulations
That's it! As you can see it's very easy to get started with Google Cloud Shell and container images.
<walkthrough-conclusion-trophy></walkthrough-conclusion-trophy>
Next steps:
Explore using your google cloud environment with data on google cloud for faster performance. Our PIFSC Google Cloud Data Archive: https://console.cloud.google.com/storage/browser/nmfs_odp_pifsc
