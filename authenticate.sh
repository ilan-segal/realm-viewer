#!/bin/bash

set -e

if [ -z ${access_token} ]; then
    echo "Access token not found. Logging in..."
    source ./minecraft-tools/login.sh ${username} ${password}
elif [ ./minecraft-tools/validate.sh ${access_token} | grep -q "Invalid" ]; then
    echo "Access token expired. Logging in..."
    source ./minecraft-tools/login.sh ${username} ${password}
else
    echo "Access token is valid."
fi