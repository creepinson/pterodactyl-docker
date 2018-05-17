git clone https://github.com/pterodactyl/panel

cp panel/.env.example panel/.env  
docker-compose run --rm composer install --no-dev  
docker-compose run --rm php php artisan key:generate --force  
docker-compose run --rm php php artisan p:environment:setup  
docker-compose run --rm php php artisan migrate  
docker-compose run --rm php php artisan db:seed  
docker-compose run --rm php php artisan p:user:make  
chmod -R 777 panel  
docker-compose up -d  
