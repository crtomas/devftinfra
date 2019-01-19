#!/bin/bash
docker-compose down

docker swarm leave --force

docker-machine stop default