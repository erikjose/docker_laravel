#!/bin/bash

echo 'Composer install'
composer install

echo 'Key generate'
php artisan key:generate

echo 'Migrate running'
php artisan migrate

echo 'Start php-fpm'
php-fpm
