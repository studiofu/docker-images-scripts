## setup private docker registry 


use docker-compose to start the registry and expose the port 5000

and then use nginx to allow client to access the docker

sudo apt update

sudo apt install nginx


at /etc/nginx/sites-enabled create link to /etc/nginx/sites-availiable

refer to the docker-registry-nginx configuration


## setup the registry account

sudo apt install apache2-utils

at auth directory

htpasswd -Bc registry.password username

htpasswd registry.password username

docker tag test-image 192.168.1.88:5000/test-image

docker push 192.168.1.88:5000/test-image


need to set insecure registry

/etc/docker/daemon.json

{
  "live-restore": true,
  "group": "docker",
  "insecure-registries": ["192.168.182.134:5000"]
}


sudo systemctl restart docker

refer to nginx ssl setting

cp certs/domain.crt /usr/local/share/ca-certificates/myregistrydomain.com.crt

update-ca-certificates

restart docker

sudo systemcl restart docker 


