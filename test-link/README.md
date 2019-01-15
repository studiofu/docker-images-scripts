
#create database
docker run -d --name db training/postgres

#create web and link to db using --link <name>:<alias>
#using -P to use a random port to map to the exposed port from the container
docker run -d -P --name web db:db training/webapp python app.py

