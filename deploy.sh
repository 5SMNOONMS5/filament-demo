#!/bin/bash

echo "這腳本是每次在 git 更新的時後會去清理 cache, 然後在 cache 新的 components, icons, route, view, config, api doc, 最後跑測試。"

# Install composer dependencies
#composer install

# Build assets
npm run build

# clear cache
php artisan optimize:clear

# clear filament cached components
php artisan filament:clear-cached-components

# clear filament permission cache
php artisan cache:forget spatie.permission.cache

# generate filament icons cache
php artisan icons:cache

# generate filament components cache
php artisan filament:cache-components

# generate route cache
php artisan route:cache

# generate view cache
# generate config cache
php artisan optimize


# run test
#php artisan test

