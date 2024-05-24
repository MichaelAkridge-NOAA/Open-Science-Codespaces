# Example 01 - Install RStudio via image & Packages via Dev Container Features
# Welcome to your RStudio Codespace!
- This readme should open up at same time as the VS code container. 
- If there are any persistent data changes, you might want to backup/export the data 
## Edit .devcontainer/rstudio-example-01/devcontainer.json with packages to install on startup
```
  // Features to be used in the dev container
  "features": {
    "ghcr.io/rocker-org/devcontainer-features/r-packages:1": {
      "packages": "cli, rlang, tidyverse, devtools, data.table, ggplot2, dplyr, shiny, rmarkdown, knitr, testthat, roxygen2, plotly",
      "installSystemRequirements": true
```

# Access RStudio
Your application is available at this URL:
