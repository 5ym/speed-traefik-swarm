#!/bin/sh

wget https://raw.githubusercontent.com/5ym/speed-traefik-swarm/main/speed-compose.yml
echo 'customize compose file'
sleep 5
vim speed-compose.yml
docker stack deploy --with-registry-auth -c speed-compose.yml speed
