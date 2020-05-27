# docker build -t myimage --build-arg TEST_ENV="test"  .
FROM ubuntu:latest
ARG TEST_ENV=something
ENV TEST_ENV=$TEST_ENV
