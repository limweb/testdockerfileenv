# docker build -t myimage --build-arg TEST_ENV="test"  .
ARG TEST_ENV=something
FROM ubuntu:latest
WORKDIR /var/www/html
ARG TEST_ENV
ENV TEST_ENV=$TEST_ENV
COPY ./.env /var/www/html
COPY docker-entrypoint.sh /usr/local/bin/
ENTRYPOINT ["docker-entrypoint.sh"]
CMD ["spleep","1d"]