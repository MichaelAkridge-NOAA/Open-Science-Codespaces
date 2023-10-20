FROM alpine:3.15.4

RUN apk update
RUN apk add --no-cache bash
RUN apk add --no-cache git
RUN apk add --no-cache docker-engine
RUN apk add --no-cache docker-cli
RUN apk add --no-cache docker-compose

ADD ./app /app
ADD ./setup_script.sh /app/setup_script.sh
ADD ./.vscode /.vscode  

# Make the script executable during the build
#RUN chmod +x /app/setup_script.sh

EXPOSE 1521 8181
