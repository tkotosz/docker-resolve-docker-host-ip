#!/bin/bash

echo "Create docker environment..."
docker pull tkotosz/resolve-docker-host-ip
docker-compose up -d --remove-orphans --build

echo "Check hosts file entry in container"
docker-compose exec test-service-alpine sh -c "getent hosts host.docker.internal" | grep "host.docker.internal"
docker-compose exec test-service-debian sh -c "getent hosts host.docker.internal" | grep "host.docker.internal"

echo "Destroy docker environment..."
docker-compose down --remove-orphans
