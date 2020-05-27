# docker build -t --build-arg TEST_ENV="test" myimage .
FROM ubuntu:latest
ARG TEST_ENV=something
RUN  echo ${TEST_END}
