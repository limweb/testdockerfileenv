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
COPY ./.env /var/www/html
COPY ./.env /tmp
COPY docker-entrypoint.sh /usr/local/bin/
COPY docker-entrypoint.sh /tmp
ENTRYPOINT ["docker-entrypoint.sh"]
CMD ["spleep","1d"]