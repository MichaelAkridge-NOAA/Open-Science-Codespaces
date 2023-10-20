FROM alpine:3.15.4

# Add your application files
ADD ./app /app
ADD ./.devcontainer /app/.devcontainer
# If needed, make the script executable
RUN chmod +x /app/setup_script.sh
RUN chmod +x /app/.devcontainer/postCreate.sh

EXPOSE 1521 8181

