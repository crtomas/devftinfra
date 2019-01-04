#!/bin/bash

#Install Docker Toolbox without Virtualbox and with git
#Virtualbox
#RAM 12GB
#2 CPU

# https://docs.docker.com/machine/reference/create/#accessing-driver-specific-flags-in-the-help-text
# --virtualbox-cpu-count "2" 
# --virtualbox-memory "1024"
# https://github.com/docker/machine/issues/4608
# --virtualbox-boot2docker-url "https://github.com/boot2docker/boot2docker/releases/download/v18.06.1-ce/boot2docker.iso"
# docker-machine create -d virtualbox --virtualbox-disk-size "60000" --engine-insecure-registry=192.168.99.100:55000 --virtualbox-cpu-count "2"  --virtualbox-memory "1024" --virtualbox-boot2docker-url "https://github.com/boot2docker/boot2docker/releases/download/v18.06.1-ce/boot2docker.iso" default

machine=default
disk_size=50000
insecure_registry_ip=192.168.99.100
insecure_registry_port=55000

docker-machine stop $machine
docker-machine rm $machine
docker-machine create -d virtualbox --virtualbox-disk-size ""$disk_size"" --engine-insecure-registry=$insecure_registry_ip:$insecure_registry_port $machine