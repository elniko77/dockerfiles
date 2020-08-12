FROM php:5-fpm-alpine
RUN apk add --no-cache php5-pcntl php5-common php5-pdo php5-mysql php5-pdo_mysql \
        && docker-php-ext-install pcntl pdo_mysql mysql \
        && docker-php-ext-enable pcntl pdo_mysql mysql
