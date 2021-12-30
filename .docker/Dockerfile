# Define base image
FROM php:7.4.26-apache

# Install dependencies
RUN apt-get update && apt-get install -y \
    libpng-dev \
    zlib1g-dev \
    libxml2-dev \
    libzip-dev \
    libonig-dev \
    openssl \
    libssl-dev \
    zip \
    curl \
    unzip \
    && docker-php-ext-configure gd \
    && docker-php-ext-install -j$(nproc) gd \
    && docker-php-ext-install pdo_mysql \
    && docker-php-ext-install zip \
    && docker-php-source delete \
    && pecl install mongodb \
    && docker-php-ext-enable mongodb \
    && pecl install redis \
    && docker-php-ext-enable redis

# Clear apt cache
RUN apt-get clean && rm -rf /var/lib/apt/lists/*

# Copy Virtual Host File
COPY .docker/vhost.conf /etc/apache2/sites-available/000-default.conf

# Set the working directory
WORKDIR /var/www/html

# Install composer
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

# Set the owner/group of the web root & enable apache modules
RUN chown -R www-data:www-data /var/www/html \
    && a2enmod rewrite headers
