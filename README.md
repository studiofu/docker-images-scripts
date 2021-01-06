## Basic Command

docker images

docker images ls

docker tag ubuntu:latest myubuntu:latest

docker inspect mysql

docker search nginx # search image

docker search --filter=is-official=true nginx

docker rmi imagename

docker image rm imagename


docker [image] build -t python:3 . # build python:3 image, from the Dockerfile in the image-python folder

docker save -o xxxx.tar python:3

docker load < xxxx.tar


docker run -d ubuntu # run as daemon

docker ps

docker run --name test --rm -it ubuntu bash

docker pause test #pause


docker ps -qa

docker ps -a # list of run docker


docker start [dockerid]

docker pull index.texcloud.com/docker/docker_library/node:latest # use other docker repository

### create local registry
docker run -d -p 5000:5000 registry:2  # create local registry

### store to /opt/data/registry
docker run -d -p 5000:5000 -v /opt/data/registry:/var/lib/registry registry:2


### create a volume container
docker run -it -v /dbdata --name dbdata ubuntu

### use the volume created in dbdata
docker run -it --volumes-from dbdata --name db1 ubuntu 


### port mapping
docker run -d -p 5000:5000 training/webapp python app.py

### link two container
### -P         : Publish all exposed ports to the host interfaces

docker run -d --name db training/postgres

docker run -d -P --name web --link db:db training/webapp python app.py # --link name:alias

### install ping tools
apt-get install inetutils-ping

### install ssh

apt-get install openssh-server

netstat -tunlp





## RANCHER
1 Master and 3 Nodes
https://192.168.2.102/g/clusters

login: admin
password: 

## REDIS
dc-redis

redis port: 6379

redis php: 7020

docker exec -it <docker-id> redis-cli


## MYSQL
dc-mysql

mysql port: 3306

adminer port: 7010 -> 8080


## MONGO
dc-mongo

mongodb port: 27017 -> 27017

mongo express port: 7030 -> 8081


## memcached
dc-memcached

memcached port: 11211 -> 11211
