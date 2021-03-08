#!/bin/bash
COMPOSE="/usr/bin/docker-compose --no-ansi"
DOCKER="/usr/bin/docker"
cd /home/ubuntu/src/nginx-config
$COMPOSE run certbot-hoa renew && $COMPOSE kill -s SIGHUP nginx
$COMPOSE run certbot-scottdcarpenter renew && $COMPOSE kill -s SIGHUP nginx
$DOCKER system prune -af
