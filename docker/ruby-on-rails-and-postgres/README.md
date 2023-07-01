# Docker setup for Ruby and PostgreSQL

## Start the stack

docker-compose up

## Connect to the web container

docker exec -it `docker ps -aqf "name=ruby-and-postgres-web-1"` bash
