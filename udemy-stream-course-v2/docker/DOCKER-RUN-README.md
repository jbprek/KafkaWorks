# Instructions kafka commands in a Kafka container

## 0 Setup - Docker use

### 1. Run docker-compose in docker folder
### 2. Access to client tools
- Open shell in kafka1 instance
````bash
docker exec -it broker /bin/bash
````
### 3. Inside container shell - General Use
#### 3.0 Setup shell env
````bash
export BROKER_LIST=localhost:9092
````
#### 3.1 List Topics
````bash
kafka-topics --bootstrap-server $BROKER_LIST --list
````
#### 3.2 Create Topic
````bash
kafka-topics --bootstrap-server $BROKER_LIST --create --topic quickstart
````
#### 3.3  Details for a topic
```bash
kafka-topics --bootstrap-server $BROKER_LIST --describe --topic quickstart
```
#### 3.4 Create Producer
```bash
kafka-console-producer --bootstrap-server $BROKER_LIST --topic quickstart
```
#### 3.5 Create Consumer
```bash
kafka-console-consumer --bootstrap-server $BROKER_LIST --topic quickstart --from-beginning
```
#### 3.6  Delete topic
```bash
kafka-topics --bootstrap-server $BROKER_LIST --delete --topic quickstart
```
