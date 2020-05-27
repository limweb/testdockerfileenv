# docker build -t myimage --build-arg TEST_ENV="test"  .
ARG TEST_ENV=something
FROM ubuntu:latest
ARG TEST_ENV
ENV TEST_ENV=$TEST_ENV
