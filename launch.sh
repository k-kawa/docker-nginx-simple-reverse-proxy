#!/bin/sh

rm /etc/nginx/conf.d/default.conf || :
envsubst < nginx.conf > /etc/nginx/conf.d/default.conf

cat /etc/nginx/conf.d/default.conf
nginx -g "daemon off;"
