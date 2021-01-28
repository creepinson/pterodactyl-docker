# Docker-Compose Pterodactyl Panel

## Setup

```
https://github.com/creepinson/pterodactyl-docker ptero
cd ptero
git clone https://github.com/pterodactyl/panel data/panel
bash ./update.sh
```

## Initializing the Panel For the First Time

This is only needed for **first time setup**.

```bash
bash ./init.sh
```

Lastly, start the containers:
`docker-compose up -d`

## Logging In For The First Time

The default credentials, once initialized, are:

`admin:12Secret34`

## Todo

In the future I plan to make the panel setup part of the docker-compose file.
