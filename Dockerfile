# Use Ubuntu as the base image
FROM ubuntu:latest

# Install updates and install Apache
RUN apt-get update && \
    apt-get install -y apache2 && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

# Copy the website content from your project's directory into the container
COPY . /var/www/html

# Expose port 80 for the Apache web server
# EXPOSE 80

# Start Apache in the foreground
CMD ["apachectl", "-D", "FOREGROUND"]
