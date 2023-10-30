FROM gvenzl/oracle-free

# Add your application files/folders
ADD ./app /app

RUN mkdir -p /app/db-vol  && \
    chmod -R 777 /app/db-vol 
# Set work directory
WORKDIR /app

EXPOSE 1521 8181
