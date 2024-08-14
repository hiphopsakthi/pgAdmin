# Use an official PHP-FPM runtime as a parent image
FROM php:8.2-fpm

# Use an official Nginx runtime as a parent image
FROM nginx:latest

# Copy the Nginx configuration file
COPY nginx.conf /etc/nginx/nginx.conf

# Set working directory
WORKDIR /var/www/html

# Copy the PHP file into the container
COPY / /var/www/html/index.php

# Expose port 80 to the outside world
EXPOSE 80

# Start Nginx and PHP-FPM
CMD ["nginx", "-g", "daemon off;"]
