# Questions Streams 
## Question 1 (1-4)
Which of the following event processing application is stateless? (select two)

1. Read log messages from a stream and writes ERROR event into a high-priority stream and the rest of the events into a low priority stream
2. Find the minimum and maximum stock prices fro each day of trading
3. Read events from a stream and modifies them from JSON to AVRO
4. Publish the top 10 stocks each day.



Explanation
Stateless means processing of each message depends only on the message, so converting from JSON to Avro or filtering a stream are both stateless operations

## Question 2 (1-15)
You are running a Kafka Streams application in a Docker container managed by Kubernetes, and upon application restart, it takes a long time for the docker container to replicate the state and get back to processing the data. How can you improve dramatically the application restart?

1. Increase the number of partitions in your inputs topic
2. Mount a persistent volume for your RocksDB
3. Reduce the Streams caching property
4. Increase the number of Streams Threads


Explanation
Although any Kafka Streams application is stateless as the state is stored in Kafka, it can take a while and lots of resources to recover the state from Kafka. In order to speed up recovery, it is advised to store the Kafka Streams state on a persistent volume, so that only the missing part of the state needs to be recovered.

Question 28: Incorrect
Which of the following Kafka Streams operators are stateful? (select all that apply)







Explanation
See: https://kafka.apache.org/20/documentation/streams/developer-guide/dsl-api.html#stateful-transformations

Question 35: Incorrect
You want to perform table lookups against a KTable everytime a new record is received from the KStream. What is the output of KStream-KTable join?





Explanation
Here KStream is being processed to create another KStream.

Question 38: Correct
The exactly once guarantee in the Kafka Streams is for which flow of data?




Explanation
Kafka Streams can only guarantee exactly once processing if you have a Kafka to Kafka topology.

# Answers Streams 