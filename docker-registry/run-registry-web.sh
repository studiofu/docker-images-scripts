#docker run -it -p 8080:8070 --name registry-web --link registry-srv \
docker run -it -p 8070:8080 --name registry-web  \
           -e REGISTRY_URL=http://192.168.1.88:5000/v2 \
           -e REGISTRY_TRUST_ANY_SSL=true \
           -e REGISTRY_NAME=docker.local hyper/docker-registry-web

#           -e REGISTRY_BASIC_AUTH="YWRtaW46Y2hhbmdlbWU=" \
