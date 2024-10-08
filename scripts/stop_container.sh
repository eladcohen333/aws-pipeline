#!/bin/bash

# Stop all running containers
docker stop $(docker ps -q)

# Remove stopped containers
docker rm $(docker ps -a -q)
