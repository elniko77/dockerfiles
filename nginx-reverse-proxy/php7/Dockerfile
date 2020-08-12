FROM php:7-fpm-alpine
RUN apk add --no-cache libzip-dev imap-dev
RUN docker-php-ext-install mysqli pdo pdo_mysql zip imap && docker-php-ext-enable pdo_mysql

