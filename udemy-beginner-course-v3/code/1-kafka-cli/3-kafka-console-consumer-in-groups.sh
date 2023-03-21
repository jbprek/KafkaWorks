# Replace "kafka-console-consumer.sh" 
# by "kafka-console-consumer" or "kafka-console-consumer.bat" based on your system # (or bin/kafka-console-consumer.sh or bin\windows\kafka-console-consumer.bat if you didn't setup PATH / Environment variables)

# docker CLI confluent platform
docker exec -it confuent-platform-kafka-1 /bin/bash


# start one consumer
kafka-console-consumer --bootstrap-server localhost:9092 --topic first_topic --group my-first-application

# start one 04-producer.md and start producing
kafka-console-producer --bootstrap-server localhost:9092 --topic first_topic

# start another consumer part of the same group. See messages being spread
kafka-console-consumer --bootstrap-server localhost:9092 --topic first_topic --group my-first-application

# start another consumer part of a different group from beginning
kafka-console-consumer --bootstrap-server localhost:9092 --topic first_topic --group my-second-application --from-beginning