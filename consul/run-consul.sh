
docker run -d -t -p 8300:8300 -p 8301:8301 -p 8302:8302 -p 8500:8500 -p 8600:8600 --name test-consul consul:1.3.0

docker pull fabiolb/fabio:1.5.5-go1.9.2

docker run -d -t -p 9998:9998 -p 9999:9999 --link test-consul:consul -e 'registry_consul_addr=consul:8500' fabiolb/fabio:1.5.5-go1.9.2

