# docker build -t myimage --build-arg TEST_ENV="test"  .
ARG TEST_ENV=something
FROM ubuntu:latest
ARG TEST_ENV
ENV TEST_ENV=$TEST_ENV
USER root
RUN mkdir /var/www
RUN mkdir /var/www/html
RUN whoami
WORKDIR /var/www/html
COPY ./.env /var/www/html
COPY docker-entrypoint.sh /usr/local/bin/
ENTRYPOINT ["docker-entrypoint.sh"]
CMD ["spleep","1d"]