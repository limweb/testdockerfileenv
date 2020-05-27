# docker build -t myimage --build-arg TEST_ENV="test"  .
ARG TEST_ENV=something
FROM ubuntu:latest
ARG TEST_ENV
ENV TEST_ENV=$TEST_ENV
WORKDIR /var/www/html
USER root
# RUN mkdir /var/www
# RUN mkdir /var/www/html
# RUN whoami
LABEL vendor=ACME\
      com.example.is-beta= \
      com.example.is-production="" \
      com.example.version="0.0.1-beta" \
      com.example.release-date="2015-02-1" \
      com.example.test-env="$TEST_ENV" 

COPY ./.env /var/www/html
COPY ./.env /tmp
COPY ./docker-entrypoint.sh /usr/local/bin/

RUN chmod +x /usr/local/bin/docker-entrypoint.sh

COPY docker-entrypoint.sh /tmp

ENTRYPOINT ["/usr/local/bin/docker-entrypoint.sh"]
CMD ["spleep","1d"]