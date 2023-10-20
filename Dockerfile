FROM alpine:3.15.4

RUN apk update
RUN apt-get update && apt-get install -y bash && rm -rf /var/lib/apt/lists/*

RUN apk add --no-cache git
RUN apk add --no-cache docker-engine
RUN apk add --no-cache docker-cli
RUN apk add --no-cache docker-compose

ADD ./app /app
ADD ./setup_script.sh /app/setup_script.sh

# Make the script executable during the build
RUN chmod +x /app/setup_script.sh

EXPOSE 1521 8181 8000 35729 3000 1313
