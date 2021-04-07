#!/usr/bin/env bash

# Find all containers and images; filtering out Portainer.
ALL_CONTAINERS=`docker ps -a | awk '$0 !~ /portainer/' | awk 'NR!=1'`
ALL_IMAGES=`docker images -a -q | awk '$0 !~ /portainer/' | awk 'NR!=1'`

# Stop and delete all containers
if [ -n "$ALL_CONTAINERS" ]; then
    docker stop $ALL_CONTAINERS
    docker rm $ALL_CONTAINERS -f
else
    echo "[i] No containers found."
fi

# Delete all images
if [ -n "$ALL_IMAGES" ]; then
    docker rmi -f $ALL_IMAGES
else
    echo "[i] No images found."
fi
