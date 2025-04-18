# Gameoteca


Gameoteca is a web platform where gamers can manage and share their gaming experiences. Users can:

- Track favorite games
- Mark completed games
- Maintain a wishlist
- Share gaming preferences with other users
- Connect with fellow gamers


## Features

* Rails 7
* Ruby 3
* Dockerfile and Docker Compose configuration
* PostgreSQL database
* Redis
* GitHub Actions for
  * tests
  * Rubocop for linting
  * Security checks with [Brakeman](https://github.com/presidentbeef/brakeman) and [bundler-audit](https://github.com/rubysec/bundler-audit)
  * Building and testing of a production Docker image
* Dependabot for automated updates

## Requirements

Please ensure you are using Docker Compose V2. This project relies on the `docker compose` command, not the previous `docker-compose` standalone program.

https://docs.docker.com/compose/#compose-v2-and-the-new-docker-compose-command

Check your docker compose version with:

```
% docker compose version
Docker Compose version v2.10.2
```

## Initial setup

```
cp .env.example .env
docker compose build
docker compose run --rm web bin/rails db:setup
```

## Running the Rails app

```
docker compose up
```

## Running the Rails console

When the app is already running with `docker-compose` up, attach to the container:

```
docker compose exec web bin/rails c
```

When no container running yet, start up a new one:

```
docker compose run --rm web bin/rails c
```

## Running tests

```
docker compose run --rm web bin/rspec
```

## Updating gems

```
docker compose run --rm web bundle update
docker compose up --build
```
