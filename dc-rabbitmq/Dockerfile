FROM rabbitmq:latest
# COPY .erlang.cookie /var/lib/rabbitmq/mnesia/
COPY cluster-entrypoint.sh /usr/local/bin/
RUN ["chmod", "+x", "/usr/local/bin/cluster-entrypoint.sh"]
ENTRYPOINT /usr/local/bin/cluster-entrypoint.sh
