#! /bin/bash

# remove all consumer containers
docker container ls | grep sample-consumer | awk '{ print $1 }' | xargs docker container rm -f
# Remove the 04-producer.md
docker container rm -f producer
# remove the Kafka cluster
docker-compose down -v
