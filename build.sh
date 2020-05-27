#!/bin/sh
docker rm -f $(docker ps -a -q)
TEST_ENV=${1:-"AAAAAAA"}
echo $TEST_ENV
# docker build -t myimage --build-arg TEST_ENV=$TEST_ENV  .
docker build -t myimage  .
docker run -d -p 80:80 —name mytest -rm  myimage sleep 1d
docker image prune -f
docker exec -it $(docker ps -a -q)  bash 