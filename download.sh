#!/bin/bash

service_unavailable="Retry again later"

result=$(./minecraft-tools/realms-download.sh | grep "${service_unavailable}")

while [ $? = 2 ] && [ ! -z ${result} ]; 
do
    sleep 5
    result=$(./minecraft-tools/realms-download.sh | grep "${service_unavailable}")
done
