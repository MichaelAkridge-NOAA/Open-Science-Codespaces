# Example 02: Install RStudio via image & pacakges via dockerfile
# Welcome to your RStudio Codespace!
- This readme should open up at same time as the VS code container. 
- If there are any persistent data changes, you might want to backup/export the data 
## Update dockerfile with pacakges to install .devcontainer/rstudio-example-02/Dockerfile
```
# Install R packages needed for basic setup
RUN R -e "install.packages(c('plotly', 'reticulate'), dependencies = TRUE)"
```

# Access RStudio
Your application is available at this URL:
