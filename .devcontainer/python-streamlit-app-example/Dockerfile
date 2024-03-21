# Use the lightweight version of the Python 3.10 official image as a base image.
FROM python:3.10-slim 

# Set the working directory inside the container to "/app".
WORKDIR /app 

# Copy all files from the current directory on the host to the "/app" directory inside the container.
COPY ./ ./ 

# Run the pip3 command to install the dependencies listed in the "requirements.txt" file.
RUN pip3 install -r requirements.txt 

# Inform Docker that the container listens on the specified network port at runtime.
EXPOSE 8501 

# Define the command to run the application using Streamlit.
ENTRYPOINT ["streamlit", "run", "app.py", "--server.port=8501", "--server.address=0.0.0.0"]
