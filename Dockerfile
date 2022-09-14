FROM php:8.1-apache

# Copy project files
WORKDIR /var/www/html
COPY . .
COPY ./000-default.conf /etc/apache2/sites-available/000-default.conf

RUN a2enmod rewrite

# Expose common and alternative ports for specific needs
EXPOSE 8080 80 8443 443 3306