echo What is the URL where you want to install your panel?
echo Example: https://panel.example.com

# Get user input
read panel_url

echo Initializing panel at "$panel_url"

# Run environment setup
docker-compose run --rm php php artisan key:generate --force --no-interaction
docker-compose run --rm php php artisan p:environment:setup --new-salt --author="admin@example.com" --url="$panel_url" --timezone="America/Los_Angeles"
docker-compose run --rm php php artisan migrate
docker-compose run --rm php php artisan db:seed
docker-compose run --rm php php artisan p:user:make --email=admin@example.com --username=admin --name-first=Admin --name-last=User --password=12Secret34 --admin=1
