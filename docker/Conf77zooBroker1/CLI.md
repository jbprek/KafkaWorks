
# TOPICS 

- List Topics
````bash
kafka-topics --bootstrap-server localhost:9092 --list
````
- Create Topic
````bash
kafka-topics --bootstrap-server localhost:9092 --create --topic quickstart
````
- Details for a topic
```bash
kafka-topics --bootstrap-server localhost:9092 --describe --topic quickstart
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
kafka-console-consumer --bootstrap-server localhost:9092 --topic quickstart --from-beginning
```

