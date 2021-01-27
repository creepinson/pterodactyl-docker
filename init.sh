echo What is the URL where you want to install your panel?
echo Example: https://panel.example.com

# Get user input
read panel_url

# Run environment setup
docker-compose run --rm php php artisan key:generate --force
docker-compose run --rm php php artisan p:environment:setup
docker-compose run --rm php php artisan migrate
docker-compose run --rm php php artisan db:seed
docker-compose run --rm php php artisan p:user:make --email=admin@example.com --username=admin --name-first=Admin --name-last=User --password=12Secret34 --admin=1
