# Add PHP-FPM base image
FROM php:8.2-fpm

WORKDIR /var/www/html

# Install your extensions
RUN apt-get update && apt-get install -y \
    unzip \
    libzip-dev

# To connect to MySQL, add mysqli
RUN docker-php-ext-install mysqli pdo pdo_mysql zip

RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer