#!/bin/sh

# Install PhpRedis

if [ ! -f /etc/php.d/41-redis.ini ]; then
    pecl install redis
    sed -i -e '/extension="redis.so"/d' /etc/php.ini
    echo 'extension="redis.so"' > /etc/php.d/41-redis.ini
fi
