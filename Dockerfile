FROM alpine:3.15.4

RUN apk update
RUN apk add --no-cache bash
RUN apk add --no-cache git
RUN apk add --no-cache docker-engine
RUN apk add --no-cache docker-cli
RUN apk add --no-cache docker-compose

# Add your application files
ADD ./app /app
ADD ./.devcontainer /app/.devcontainer
ADD ./.devcontainer /.devcontainer
# If needed, make the script executable
RUN chmod +x /app/setup_script.sh
RUN chmod +x /app/.devcontainer/postCreate.sh

EXPOSE 1521 8181

