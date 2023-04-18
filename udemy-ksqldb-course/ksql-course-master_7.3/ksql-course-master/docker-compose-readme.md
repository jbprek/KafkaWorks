# IP Notes

## Run ksql shell
1. Open terminal inside kdqldb-server container
 ````
docker exec -it ksqldb-server bash
````
2. Run ksql command
 ````
ksql
````
## Run kafka commands
1. Open terminal inside kafka container
 ````
docker exec -it kafka bash
````
2. Example create topic command
````
kafka-topics --bootstrap-server localhost:9092 --create --partitions 1 --replication-factor 1 --topic USERS
````

