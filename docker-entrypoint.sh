#!/bin/sh
echo 'test env'
echo $TEST_ENV
sed 's/$TEST_ENV/${TEST_END}/g;' /var/www/html/.env >  /var/www/html/.env