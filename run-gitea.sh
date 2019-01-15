# localhost:80
docker run -d --name=gitea -p 20022:22 -p 80:3000 -v /dockvol/gitea:/data gitea/gitea:latest  
