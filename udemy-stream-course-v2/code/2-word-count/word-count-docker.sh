#!/bash

# WSL Terminal
# create input topic with two partitions
kafka-topics.sh --create --bootstrap-server localhost:9092 --replication-factor 1 --partitions 2 --topic word-count-input

# create output topic
kafka-topics.sh --create --bootstrap-server localhost:9092 --replication-factor 1 --partitions 2 --topic word-count-output

# launch a Kafka consumer
kafka-console-consumer.sh --bootstrap-server localhost:9092 \
    --topic word-count-output \
    --from-beginning \
    --formatter kafka.tools.DefaultMessageFormatter \
    --property print.key=true \
    --property print.value=true \
    --property key.deserializer=org.apache.kafka.common.serialization.StringDeserializer \
    --property value.deserializer=org.apache.kafka.common.serialization.LongDeserializer

# launch the streams application

# then produce data to it
kafka-console-producer.sh --broker-list localhost:9092 --topic word-count-input

# package your application as a fat jar
mvn clean package

# run your fat jar
java -jar <your jar here>.jar

# list all topics that we have in Kafka (so we can observe the internal topics)
kafka-topics.sh --list --bootstrap-server localhost:9092


# Clean up
# create input topic with two partitions
kafka-topics.sh --delete --bootstrap-server localhost:9092 --topic word-count-input

# create output topic
kafka-topics.sh --delete --bootstrap-server localhost:9092  --topic word-count-output
