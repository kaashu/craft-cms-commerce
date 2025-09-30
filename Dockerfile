FROM php:8.2-fpm-alpine

# System dependencies
RUN apk add --no-cache \
    git unzip bash icu-dev oniguruma-dev \
    libpng-dev libjpeg-turbo-dev libwebp-dev libzip-dev \
    mariadb-client libxml2-dev

# PHP extensions required by Craft
RUN docker-php-ext-configure gd --with-jpeg --with-webp \
    && docker-php-ext-install -j$(nproc) \
       bcmath gd intl pdo pdo_mysql exif zip opcache soap

# Install Composer (stable)
COPY --from=composer:2.7 /usr/bin/composer /usr/bin/composer

WORKDIR /var/www/html

# PHP config overrides
COPY docker/php.ini /usr/local/etc/php/conf.d/php.ini

# Permissions: create non-root user
RUN addgroup -g 1000 app && adduser -G app -g app -D -u 1000 app \
    && chown -R app:app /var/www/html
USER app
