First, clone the repo.
`git clone https://github.com/creepinson/pterodactyl-docker`

Then cd into it: `cd pterodactyl-docker`

Optional: edit docker-compose.yml with the ports you want to use for the panel.


Then, run the following to setup the panel:

```
git clone https://github.com/pterodactyl/panel
cp panel/.env.example panel/.env
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
