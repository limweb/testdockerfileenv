#!/bin/sh
echo 'test env'
echo $TEST_ENV
sed -i 's/$TEST_ENV/'"$TEST_ENV"'/g' /var/www/html/.env
cat /var/www/html/.env
exec "$@"