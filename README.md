# README
This is a sample Rails application utilizing Docker.

## Initial Setup Steps Steps:

### First delete:
yarn.lock,
Gemfile.lock


### Next build containers with this command…
docker-compose build

### Start containers… all should start with the exception of the web pack dev server container…. Do that with this command:
docker-compose up -d

### Next run this command to run database migrations:
docker-compose run web rails db:migrate


### Next install web pack with this command:
docker-compose run web bundle exec rails webpacker:install

### Finally… start the webpack_dev_server with this command:
docker-compose up -d webpack_dev_server
