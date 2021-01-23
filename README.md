# docker-express
A template to quickstart your Express development with Docker.


## Prerequisite
* [Docker](https://docs.docker.com/get-docker/) 20.10+
* [docker-compose](https://docs.docker.com/compose/install/) 1.27+
* [Node](https://nodejs.org/en/download/) 14.15+


## Quick start
1. Clone this repository.
```
git clone https://github.com/rzbyn/docker-express.git
```
2. Change directory to the project root folder. `cd docker-express`
3. Make a copy of `.env` file. `cp .env-example .env`
3. Run docker-compose.
```
docker-compose -f docker/docker-compose.yml up -d
```
Or you can set a custom project name by using
```
docker-compose -f docker/docker-compose.yml -p [YOUR_PROJECT_NAME] up -d
```
