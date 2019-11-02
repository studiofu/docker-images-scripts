## kafka docker example

https://medium.com/@poyu677/apache-kafka-%E7%B0%A1%E6%98%93%E5%85%A5%E9%96%80-db58898a3fab

https://oranwind.org/-big-data-apache-kafka-message-broker-shi-yong-jiao-xue/

https://oranwind.org/aws-cloudfront-gua-zai-s3-jia-she-cdn-fu-wu/

### start docker compose

https://github.com/wurstmeister/kafka-docker

change docker-compose.yml KAFKA-ADVERTISE_HOST_NAME to PC IP

docker-compose up -d

docker-compose ps

### scale the kafka instance

docker-compose scale kafka=3

### start kafka shell

start-kafka-shell.sh <PC IP> <ZOOKEEPER IP:PORT>
./start-kafka-shell.sh 192.168.1.88 192.168.1.88:2181

### create topic

kafka-topics.sh --create --topic topic --partitions 4 --zookeeper $ZK --replication-factor 2

### list topic

kafka-topics.sh --list  --zookeeper $ZK

### describe topic

kafka-topics.sh --describe --topic topic --zookeeper $ZK

### produce message

kafka-console-producer.sh --topic=topic --broker-list=`broker-list.sh`

### check broker

broker-list.sh

### consume message
### either one broker location, check from broker-list.sh

kafka-console-consumer.sh --topic=topic --bootstrap-server=<broker location> --from-beginning

