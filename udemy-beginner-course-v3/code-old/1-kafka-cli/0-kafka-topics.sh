# Replace "kafka-topics.sh" 
# by "kafka-topics" or "kafka-topics.bat" based on your system # (or bin/kafka-topics.sh or bin\windows\kafka-topics.bat if you didn't setup PATH / Environment variables)

kafka-topics

# docker CLI confluent platform
docker exec -it confuent-platform-kafka-1 /bin/bash

# List topics
kafka-topics --bootstrap-server localhost:9092 --list

# Default 1 partition replication factor 1
kafka-topics --bootstrap-server localhost:9092 --topic first_topic --create

# Default replication factor 1
kafka-topics --bootstrap-server localhost:9092 --topic first_topic --create --partitions 3

# Will not work if running brokers number == 1
kafka-topics --bootstrap-server localhost:9092 --topic first_topic --create --partitions 3 --replication-factor 2

# Create a topic (WORKING)
kafka-topics --bootstrap-server localhost:9092 --topic first_topic --create --partitions 3 --replication-factor 1
#OR
kafka-topics --bootstrap-server kafka:9092 --topic first_topic --create --partitions 3 --replication-factor 1

# List topics
kafka-topics --bootstrap-server localhost:9092 --list

# Describe a topic
kafka-topics --bootstrap-server localhost:9092 --topic first_topic --describe

# Delete a topic
kafka-topics --bootstrap-server localhost:9092 --topic first_topic --delete
# (only works if delete.topic.enable=true)