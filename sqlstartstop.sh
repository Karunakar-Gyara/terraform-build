#!/bin/bash

# List of SQL instances to stop
SQL_INSTANCES=("db-instance-1" "destroy-db" "ps-db-1")


# Loop through each SQL instance and stop it
for INSTANCE_NAME in "${SQL_INSTANCES[@]}"
do
    # Stop MySQL instance
    gcloud sql instances patch  "${INSTANCE_NAME}" \
--activation-policy=ALWAYS 



    echo "Stopping SQL instance: ${INSTANCE_NAME}"
done
