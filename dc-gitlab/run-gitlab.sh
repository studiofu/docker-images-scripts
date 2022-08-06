docker run --detach \
	--hostname gitlab.192.168.1.88.nip.io \
	--publish 30443:443 --publish 30080:80 --publish 30022:22 \
	--name gitlab \
	--restart always \
	--volume /dockvol/gitlab/config:/etc/gitlab \
	--volume /dockvol/gitlab/logs:/var/log/gitlab \
	--volume /dockvol/gitlab/data:/var/opt/gitlab \
	gitlab/gitlab-ce:latest
