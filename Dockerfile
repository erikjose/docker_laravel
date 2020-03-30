FROM php:7.3.6-fpm-alpine3.9

WORKDIR /var/www

RUN apk add bash mysql-client
RUN docker-php-ext-install pdo pdo_mysql

RUN rm -rf /var/www/html

RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

COPY .env.example .env

# RUN composer install && \
#     cp .env.example .env && \
#     php artisan key:generate && \
#     php artisan config:cache

RUN ln -s public html

EXPOSE 9000

ENTRYPOINT ["php-fpm"]

