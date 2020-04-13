# README

* Ruby version= 2.7.1

* System dependencies
  rails 6
  docker

* Configuration (with docker)
  run `docker-compose up -d` 
  check docker and containers are running 
  docker-compose exec website rake db:drop db:create db:migrate db:seed
  
  At the browser, visit : http://localhost:3000/

* Configuration (without docker)
  bundle install
  rake db:drop db:create db:migrate db:seed
  rails server
  At the browser, visit : http://localhost:3000/
  

