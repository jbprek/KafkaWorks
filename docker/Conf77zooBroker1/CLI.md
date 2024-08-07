
# TOPICS 

- List Topics
````bash
kafka-topics --bootstrap-server localhost:9092 --list
````
#### 3.2 Create Topic
````bash
kafka-topics --bootstrap-server localhost:9092 --create --topic quickstart
````
#### 3.3  Details for a topic
```bash
kafka-topics --bootstrap-server localhost:9092 --describe --topic quickstart
```
#### 3.4 Create Producer
```bash
kafka-console-producer --bootstrap-server localhost:9092 --topic quickstart
```
#### 3.5 Create Consumer
```bash
kafka-console-consumer --bootstrap-server localhost:9092 --topic quickstart --from-beginning
```
#### 3.6  Delete topic
```bash
kafka-topics --bootstrap-server localhost:9092 --delete --topic quickstart
```
