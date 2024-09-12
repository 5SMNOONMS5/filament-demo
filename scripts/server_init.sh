#!/bin/bash

cd ../ || exit

cp .env.example .env
composer install --no-interaction
php artisan migrate:fresh --seed
php artisan key:generate
npm install
npm run dev
php artisan jwt:secret
php artisan storage:link
sudo chown -R www-data:www-data ./storage bootstrap/cache
sudo chmod -R ug+rwx ./storage ./storage bootstrap/cache
