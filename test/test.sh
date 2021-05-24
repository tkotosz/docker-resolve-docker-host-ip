#!/bin/bash

echo "Create docker environment..."
docker-compose up -d --remove-orphans --build

echo "Check hosts file entry in container"
docker-compose exec test-service cat /etc/hosts | grep "host.docker.internal"

echo "Destroy docker environment..."
docker-compose down --remove-orphans
