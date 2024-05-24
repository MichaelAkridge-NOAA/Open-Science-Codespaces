# Use Rocker Verse as the base image
FROM rocker/verse:latest

# Install system utilities
RUN apt-get update && apt-get install -y \
    wget \
    bzip2 \
    && rm -rf /var/lib/apt/lists/*

# Install Quarto
RUN wget -qO- "https://quarto.org/download/latest/bash" | bash

# Install Miniconda for Python management
RUN wget --quiet https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh -O ~/miniconda.sh \
    && /bin/bash ~/miniconda.sh -b -p /opt/conda \
    && rm ~/miniconda.sh \
    && ln -s /opt/conda/etc/profile.d/conda.sh /etc/profile.d/conda.sh \
    && echo ". /opt/conda/etc/profile.d/conda.sh" >> ~/.bashrc \
    && echo "conda activate base" >> ~/.bashrc

# Set the PATH environment variable
ENV PATH /opt/conda/bin:$PATH

# Copy install.R file to the Docker image
COPY install.R /usr/local/bin/install.R

# Install R packages using the install.R script
RUN Rscript /usr/local/bin/install.R

# Configure reticulate to use Miniconda and install Python packages
RUN R -e "reticulate::install_miniconda()" \
    && R -e "reticulate::conda_install('r-reticulate', 'python-kaleido')" \
    && R -e "reticulate::py_install('packaging')" \
    && R -e "reticulate::conda_install('r-reticulate', 'plotly', channel = 'plotly')"

