# Run

## Run docker compose 
````bash
# Run
docker compose -f ./czoo-schema-kowl.yml up -d

# Verify running 
docker ps
````

## Open terminal in Broker container
````bash
# Run
docker exec -it broker /bin/bash

````
## Clean up docker compose
````bash
docker compose -f ./czoo-schema-kowl.yml down
# Verify down 
docker ps
````