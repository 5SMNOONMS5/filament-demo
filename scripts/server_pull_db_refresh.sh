#!/bin/bash

# 這腳本是為了快速 pull, 更新 db 以及 npm dev, 加速開發使用而已

cd ../ || exit

git pull
composer install --no-interaction
npm run dev
php artisan migrate:refresh --seed
php artisan optimize:clear
php artisan scribe:generate
