#!/bin/sh

# After the deployment finished, give the full 0777 permissions
# to the folders that should be writable, such as the storage/ bootstrap/cache/

if [ ! -f storage/logs/laravel.log ]; then
    touch storage/logs/laravel.log
    chown webapp:webapp storage/logs/laravel.log
fi
sudo chmod -Rf 0777 storage/*
sudo chmod -Rf 0777 bootstrap/cache/*
