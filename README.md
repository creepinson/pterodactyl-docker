# Docker-Compose Pterodactyl Panel

## Setup

```
https://github.com/creepinson/pterodactyl-docker ptero
cd ptero
bash ./update.sh
```

## Initializing the Panel For the First Time

This is only needed for **first time setup**.

```bash
bash ./init.sh
```

## Old

```
git clone https://github.com/pterodactyl/panel
cp .env.example panel/.env
docker-compose run --rm composer install --no-dev
docker-compose run --rm php php artisan key:generate --force
docker-compose run --rm php php artisan p:environment:setup
docker-compose run --rm php php artisan migrate
docker-compose run --rm php php artisan db:seed
docker-compose run --rm php php artisan p:user:make
chmod -R 777 panel
```

Lastly, start the containers:
`docker-compose up -d`

## Todo

In the future I plan to make the panel setup part of the docker-compose file.
