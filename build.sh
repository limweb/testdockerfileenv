#!/bin/sh
docker rm -f $(docker ps -a -q)
docker container prune -f
docker image prune -f
TEST_ENV=${1:-"AAAAAAA"}
echo $TEST_ENV
# docker build -t myimage --build-arg TEST_ENV=$TEST_ENV  .
docker build -t myimage  .
# docker run -d -p 80:80 —name mytest -rm  myimage sleep 1d
# docker run -it --rm  -d  -p 80:80 -e TEST_ENV=$TEST_ENV --name mytest myimage sleep 1d
docker run -it  -d  -p 80:80 -e TEST_ENV=$TEST_ENV --name mytest myimage
# docker exec -it $(docker ps -a -q)  cat .env