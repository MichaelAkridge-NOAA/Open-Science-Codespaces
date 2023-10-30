FROM container-registry.oracle.com/database/ords:latest

# Create necessary directories and set permissions
RUN mkdir -p /app/ords_secrets /app/ords_config  && \
    chmod -R 777 /app/ords_config /app/ords_secrets

RUN echo $CONN_STRING > /app/ords_secrets/conn_string.txt

# Set work directory
WORKDIR /app
