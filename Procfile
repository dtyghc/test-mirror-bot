build:
  docker:
    web: Dockerfile
run:
  web: bash start.sh
  worker: bash start.sh
  heroku ps:scale web=1
