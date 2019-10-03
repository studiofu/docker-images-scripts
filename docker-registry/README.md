## setup private docker registry 


use docker-compose to start the registry and expose the port 5000

and then use nginx to allow client to access the docker

sudo apt update

sudo apt install nginx


at /etc/nginx/sites-enabled create link to /etc/nginx/sites-availiable

create docker-registry

```
server {
        listen 80;
        listen [::]:80;

        root /var/www/example.com/html;
        index index.html index.htm index.nginx-debian.html;

        server_name docker.local;

        location / {
                # Do not allow connections from docker 1.5 and earlier
                # docker pre-1.6.0 did not properly set the user agent on ping, catch "Go *" user agents
                        if ($http_user_agent ~ "^(docker\/1\.(3|4|5(?!\.[0-9]-dev))|Go ).*$" ) {
                        return 404;
                }

                proxy_pass                          http://localhost:5000;
                proxy_set_header  Host              $http_host;   # required for docker client's sake
                proxy_set_header  X-Real-IP         $remote_addr; # pass on real client's IP
                proxy_set_header  X-Forwarded-For   $proxy_add_x_forwarded_for;
                proxy_set_header  X-Forwarded-Proto $scheme;
                proxy_read_timeout                  900;
        }
}
```


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


