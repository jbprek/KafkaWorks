# Broker Questions
## Question 6: Correct
Suppose you have 6 brokers and you decide to create a topic with 10 partitions and a replication factor of 3. The brokers 0 and 1 are on rack A, the brokers 2 and 3 are on rack B, and the brokers 4 and 5 are on rack C. If the leader for partition 0 is on broker 4, and the first replica is on broker 2, which broker can host the last replica? (select two)







Explanation
When you create a new topic, partitions replicas are spreads across racks to maintain availability. Hence, the Rack A, which currently does not hold the topic partition, will be selected for the last replica

## Question 9: Incorrect
What is the disadvantage of request/response communication?





Explanation
Point-to-point (request-response) style will couple client to the server.

## Question 13: Correct
What are the requirements for a Kafka broker to connect to a Zookeeper ensemble? (select two)





Explanation
Each broker must have a unique broker id and connect to the same zk ensemble and root zNode

## Question 26: Incorrect
There are five brokers in a cluster, a topic with 10 partitions and replication factor of 3, and a quota of producer_bytes_rate of 1 MB/sec has been specified for the client. What is the maximum throughput allowed for the client?





Explanation
Each producer is allowed to produce @ 1MB/s to a broker. Max throughput 5 * 1MB, because we have 5 brokers.

## Question 27: Incorrect
What happens when broker.rack configuration is provided in broker configuration in Kafka cluster?





Explanation
Partitions for newly created topics are assigned in a rack alternating manner, this is the only change broker.rack does

## Question 36: Incorrect
Partition leader election is done by





Explanation
The Controller is a broker that is responsible for electing partition leaders

## Question 38: Incorrect
How much should be the heap size of a broker in a production setup on a machine with 256 GB of RAM, in PLAINTEXT mode?





Explanation
In Kafka, a small heap size is needed, while the rest of the RAM goes automatically to the page cache (managed by the OS). The heap size goes slightly up if you need to enable SSL

## Question 39: Correct
A topic "sales" is being produced to in the Americas region. You are mirroring this topic using Mirror Maker to the European region. From there, you are only reading the topic for analytics purposes. What kind of mirroring is this?




Explanation
This is active-passing as the replicated topic is used for read-only purposes only

## Question 45: Incorrect
In Kafka, every broker... (select three)







Explanation
Kafka topics are divided into partitions and spread across brokers. Each brokers knows about all the metadata and each broker is a bootstrap broker, but only one of them is elected controller

## Question 46: Incorrect
Your manager would like to have topic availability over consistency. Which setting do you need to change in order to enable that?




Explanation
unclean.leader.election.enable=true allows non ISR replicas to become leader, ensuring availability but losing consistency as data loss will occur

# Broker Answers