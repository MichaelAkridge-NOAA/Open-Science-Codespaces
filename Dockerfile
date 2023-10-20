FROM alpine:3.15.4

# Add your application files
ADD ./app /app

# If needed, make the script executable
RUN chmod +x /app/setup_script.sh

EXPOSE 1521 8181

