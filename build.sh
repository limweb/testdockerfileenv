#!/bin/sh
chmod +x docker-entrypoint.sh
docker rm $(docker ps -a -q)
docker build -t myimage --build-arg TEST_ENV="test"  .
docker run -d myimage sleep 1d
docker image prune -f
docker exec -it $(docker ps -a -q)  bash 