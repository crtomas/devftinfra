#!/bin/bash
docker-compose up -d

docker swarm init --advertise-addr=192.168.99.100
docker stack deploy -c common-services.yml ftcommon