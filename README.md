# README
## Create project
```rails new docker-rails-demo --skip-test --webpack --database=mysql```
## Create Dockerfile
```touch Dockerfile```
## Build Dockerfile
```docker build -t docker_on_rails .```
## Error webpacker, add `config.webpacker.check_yarn_integrity = false` in config/environment/development.rb

```
docker build -t docker_on_rails .
docker run -p 3000:3000 docker_on_rails
```
## Create docker-compose.yml
```touch docker-compose.yml```
## After setup docker-compose done -> database.yml config db.
## Setup db
```docker-compose run app rails db:setup```
## Run project
```docker-compose up -d && sleep 2 && docker attach docker-rails-demo-app-1```

