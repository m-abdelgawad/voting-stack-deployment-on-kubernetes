#!/bin/bash

# Apply all resources from YAML files
kubectl apply -f postgres-deploy.yaml
kubectl apply -f postgres-service.yaml
kubectl apply -f redis-deploy.yaml
kubectl apply -f redis-service.yaml
kubectl apply -f result-app-deploy.yaml
kubectl apply -f result-app-service.yaml
kubectl apply -f voting-app-deploy.yaml
kubectl apply -f voting-app-service.yaml
kubectl apply -f worker-app-deploy.yaml

# Print nodes with wide option
echo "Nodes:"
kubectl get nodes -o wide

# Print services
echo "Services:"
kubectl get services

# Print deployments
echo "Deployments:"
kubectl get deployments

# Print pods
echo "Pods:"
kubectl get pods

echo "Deployment completed!"