# Web App Demo
The purpose of this repo is to iterate the step-by-step process of building a project using Ruby, Grape, and ActiveRecord. Each commit message specifies what is happening at each phase of the development process. Once complete, this repo will be used to create a more detailed wiki/doc for each step.

## Setup
### Dependencies
- Ruby (2.2.3 used for development)
- MySQL (5.6 used for development)
- Bundler gem

Clone the repo and install all the gem dependencies for this project:
```
$ git clone https://github.com/AnthonyBobsin/web_app_demo.git
$ cd web_app_demo
$ bundle install
```
Copy `db/config.yml.sample` to `db/config.yml` and **replace credentials inside `db/config.yml` with your local MySQL user/pass**:
```
$ cp db/config.yml.sample db/config.yml
```
Create your local MySQL databases and run migrations:
```
$ APP_ENV=development bundle exec rake db:create
$ APP_ENV=development bundle exec rake db:migrate
```
Start up the rackup server:
```
$ APP_ENV=development bundle exec rackup
```
Attempt to hit the "hello world" endpoint to verify setup was successful:
```
$ curl localhost:9292/api
```
