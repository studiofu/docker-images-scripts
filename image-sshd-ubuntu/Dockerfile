FROM ubuntu:18.04

MAINTAINER docker_usr (user@docker.com)

RUN apt-get update
RUN apt-get install -y openssh-server
RUN mkdir -p /var/run/sshd
RUN mkdir -p /root/.ssh
ADD authorized_keys /root/.ssh/authorized_keys
ADD run.sh /run.sh
RUN chmod 755 /run.sh

EXPOSE 22
CMD ["/run.sh"]
