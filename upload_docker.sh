#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
dockerpath=damola12345/ml-microservices

# Step 2:  
# Authenticate & tag
echo "Docker ID and Image: $dockerpath"
docker login --username damola12345
docker tag fa3033d12a3f  $dockerpath
# Step 3:
# Push image to a docker repository
docker push $dockerpath