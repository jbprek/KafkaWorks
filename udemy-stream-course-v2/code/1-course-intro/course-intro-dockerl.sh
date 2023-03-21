#!/bin/bash

### Docker Only
## Start Docker/Kafka following the instructions in docker folder.

# create input topic
bin/kafka-topics.sh --create --bootstrap-server 172.20.243.84:2181 --replication-factor 1 --partitions 1 --topic streams-plaintext-input

# create output topic
bin/kafka-topics.sh --create --zookeeper 172.20.243.84:2181 --replication-factor 1 --partitions 1 --topic streams-wordcount-output

# start a kafka 04-producer.md
bin/kafka-console-producer.sh --broker-list 172.20.243.84:9092 --topic streams-plaintext-input
# enter
kafka streams udemy
kafka data processing
kafka streams course
# exit

# verify the data has been written
bin/kafka-console-consumer.sh --bootstrap-server 172.20.243.84:9092 --topic streams-plaintext-input --from-beginning

# start a consumer on the output topic
bin/kafka-console-consumer.sh --bootstrap-server 172.20.243.84:9092 \
    --topic streams-wordcount-output \
    --from-beginning \
    --formatter kafka.tools.DefaultMessageFormatter \
    --property print.key=true \
    --property print.value=true \
    --property key.deserializer=org.apache.kafka.common.serialization.StringDeserializer \
    --property value.deserializer=org.apache.kafka.common.serialization.LongDeserializer

# start the streams application
bin/kafka-run-class.sh org.apache.kafka.streams.examples.wordcount.WordCountDemo

# verify the data has been written to the output topic!
