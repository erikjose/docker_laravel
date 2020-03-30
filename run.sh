echo 'Running docker-compose up -d'
docker-compose up -d

echo 'Composer install running'
docker exec -it app_laravel composer install

echo 'Generate key running'
docker exec -it app_laravel php artisan key:generate

echo 'Migrate running'
docker exec -it app_laravel php artisan migrate
