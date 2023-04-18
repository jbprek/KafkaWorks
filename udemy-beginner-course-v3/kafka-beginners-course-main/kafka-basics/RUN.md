# Make sure kafka is started

# Create topic
kafka-topics.sh --bootstrap-server localhost:9092 --list

kafka-topics.sh --bootstrap-server localhost:9092 --create --topic demo_java --partitions 3

# Run consumer

kafka-console-consumer.sh --bootstrap-server localhost:9092 --topic demo_java

# Cleanup 
kafka-topics.sh --bootstrap-server localhost:9092 --delete --topic demo_java