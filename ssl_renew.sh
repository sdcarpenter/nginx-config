#!/bin/bash
COMPOSE="/usr/bin/docker-compose --no-ansi"
DOCKER="/usr/bin/docker"
exit
cd /home/ubuntu/src/nginx-config
$COMPOSE run certbot-hoa renew && $COMPOSE kill -s SIGHUP webserver
$COMPOSE run certbot-scottdcarpenter renew && $COMPOSE kill -s SIGHUP webserver
$DOCKER system prune -af
