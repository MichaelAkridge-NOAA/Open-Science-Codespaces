# Python runtime as a parent image
FROM python:3.9-slim

# Set the working directory in the container
WORKDIR /app

# Copy the current directory 
COPY ./ ./

# Install Jupyter Book
RUN pip install --no-cache-dir jupyter-book

EXPOSE 4000

ENV NAME JupyterBookDev

# Run 
CMD ["jupyter-book", "build", "."]
