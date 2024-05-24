#!/bin/bash

chmod +x /workspaces/Open-Science-Codespaces/.devcontainer/rstudio-example-03/post_start.sh
/workspaces/Open-Science-Codespaces/.devcontainer/rstudio-example-03/post_start.sh
rserver --server-user=rstudio --auth-none=1 --www-address=0.0.0.0 --www-port=8787 --www-root-path=/

