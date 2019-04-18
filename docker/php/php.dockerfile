FROM php:7.3.3-fpm

RUN apt-get update && apt-get install -y libmagickwand-dev libmcrypt-dev libpq-dev --no-install-recommends \
    && pecl install mcrypt-1.0.2 \
    && docker-php-ext-enable mcrypt \
    && pecl install imagick \
    && docker-php-ext-enable imagick \
    && docker-php-ext-configure pgsql -with-pgsql=/usr/local/pgsql \
    && docker-php-ext-install pdo pdo_pgsql pgsql
