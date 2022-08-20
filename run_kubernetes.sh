#!/usr/bin/env bash

# Step 1:
# This is your Docker ID/path
dockerpath=bmahatchi/udacity-project-4:v1.0.0

# Step 2
# Run the Docker Hub container with kubernetes
kubectl create deployment udacity-project-4 --image=$dockerpath

# Step 3:
# List kubernetes pods
kubectl get deployments,rs,svc,pods
export POD_NAME=$(kubectl get pods -o go-template --template '{{range .items}}{{.metadata.name}}{{"\n"}}{{end}}')
echo Name of the Pod: $POD_NAME

# Step 4:
# Forward the container port to a host
kubectl port-forward pod/$POD_NAME --address 0.0.0.0 8000:80
