# Use the official PHP image with Apache
FROM php:8.1-apache

# Set the working directory inside the container
WORKDIR /var/www/html

# Copy the project files to the container
COPY . /var/www/html

# Install necessary PHP extensions (example: mysqli and pdo_mysql)
RUN docker-php-ext-install mysqli pdo pdo_mysql

# Enable Apache mod_rewrite (optional, if needed)
RUN a2enmod rewrite

# Expose port 80 for the web server
EXPOSE 80

# Start Apache in the foreground
CMD ["apache2-foreground"]
