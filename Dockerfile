FROM alpine:3.15.4

RUN apk update
RUN apk add --no-cache bash
RUN apk add --no-cache git
RUN apk add --no-cache docker-engine
RUN apk add --no-cache docker-cli
RUN apk add --no-cache docker-compose

# Add your application files/folders
ADD ./app /app
mkdir -p /app/ords_secrets
mkdir -p /app/ords_config
mkdir -p /app/db-vol
RUN chmod -R 777 /app/db-vol
RUN chmod -R 777 /app/ords_config
RUN chmod -R 777 /app/ords_secrets

# Make the script executable
RUN chmod +x /app/setup_script.sh

EXPOSE 1521 8181

