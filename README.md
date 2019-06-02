# Wikidata PIK

This repository contains the `docker-compose.yml` file to start a wikidata
server instance with all it's dependencies.

Also we have all assets that we load into the docker containers like the logo
or custom settings.

## Setup

### Docker

You can install docker from [here](https://docs.docker.com/install/) by following
the instructions there.

### Docker Compose

You can install docker compose from [here](https://docs.docker.com/compose/install/) by following the instructions there.

### Clean up

Before you go ahead and start the project make sure there are no unnecessary
containers running, to stop all of them run the following command. This will
remove all your running docker containers.

```sh
docker rm -f $(docker ps -a -q)
```
### Remove all of data wikibase contained, inclusive Bots

```sh
docker-compose down --volumes
```

## Wikidata Server

### Starting the server

```sh
docker-compose pull
docker-compose up
```

### Stoping the server

```sh
docker-compose stop
docker-compose down
```

## Project structure


## Further reading
* [Wikibase Docker Repository](https://github.com/wmde/wikibase-docker)
* [Docker Documentation Website](https://docs.docker.com/)
