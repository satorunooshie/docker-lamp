FROM php:7.3-apache
RUN docker-php-ext-install mysqli
RUN apt-get update \
    && apt-get install -y vim \
    && docker-php-ext-install pdo_mysql \
    && apt-get install -y libzip-dev \
    && apt-get install -y zlib1g-dev \
    && rm -rf /var/lib/apt/lists/* \
    && docker-php-ext-install zip
# Composer
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer
