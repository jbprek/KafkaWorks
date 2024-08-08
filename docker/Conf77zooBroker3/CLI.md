
# TOPICS 
- List Topics
````bash
kafka-topics --bootstrap-server localhost:9092 --list
#OR The following  can be useful if shell is opened in a container like zookeeper, the above works since we opened the shell in the broker container
kafka-topics --bootstrap-server broker:29092 --list
````
- Create Topic
````bash
kafka-topics --bootstrap-server localhost:9092 --create --topic quickstart --partitions 2 --replication-factor 1
````
- Details for a topic
```bash
kafka-topics --bootstrap-server localhost:9092 --describe --topic quickstart
```
- Alter topic partitions 
```bash
kafka-topics --bootstrap-server localhost:9092 --alter --partitions 10 --topic quickstart 
```
- Delete topic
```bash
kafka-topics --bootstrap-server localhost:9092 --delete --topic quickstart
```
# PRODUCER & CONSUMER 
- Create Producer
```bash
kafka-console-producer --bootstrap-server localhost:9092 --topic quickstart
```
- Create Consumer
```bash
# From the beginning 
kafka-console-consumer --bootstrap-server localhost:9092 --topic quickstart --from-beginning
```
# Producer & Consumer With Keys 
- Producer with keys 
```bash
kafka-console-producer --bootstrap-server localhost:9092 --topic quickstart --property "key.separator=-" --property "parse.key=true"
```
- Consumer with keys and groups (Open 2 consumers to see the effect of groups)
```bash
kafka-console-consumer --bootstrap-server localhost:9092 --group quickstart-consumer -topic quickstart --property "key.separator=-" --property "print.key=true" --from-beginning
```
# View Consumer Groups
- Basic
```bash
kafka-consumer-groups --bootstrap-server localhost:9092 --list
```
- With offset details
```bash
kafka-consumer-groups --bootstrap-server localhost:9092 --topic quickstart --from-beginning
```