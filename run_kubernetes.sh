#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# This is your Docker ID/path
dockerpath='damola12345/ml-microservices:latest'

# Run the Docker Hub container with kubernetes
docker login
kubectl run ml-microservices --image=$dockerpath --port=80

# List kubernetes pods
kubectl get pods

# Forward the container port to a host
kubectl port-forward ml-microservices 8000:80

# Get logs
kubectl logs `kubectl get pods -o=name`
