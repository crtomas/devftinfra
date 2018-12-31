#!/bin/bash

#Install Docker Toolbox without Virtualbox and with git
#Virtualbox
#RAM 12GB
#2 CPU


machine=default
disk_size=50000
insecure_registry_ip=192.168.99.100
insecure_registry_port=55000

docker-machine stop $machine
docker-machine rm $machine
docker-machine create -d virtualbox --virtualbox-disk-size ""$disk_size"" --engine-insecure-registry=$insecure_registry_ip:$insecure_registry_port $machine