
# create the docker image with ssh server support
# and then need to create the docker container by using

# create key and copy to the container
# ssh-keygen -t rsa
# => generate under .sshd/id_rsa.pub

docker run -d -p 10022:22 sshd:dockerfile

map the local port 10022 to the container port 22

and then use the following command to access the container server

ssh -l root -p 10022 localhost 
