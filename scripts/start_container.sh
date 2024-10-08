#!/bin/bash

# Define variables
AWS_REGION="us-east-1"
ECR_URL="794038243494.dkr.ecr.us-east-1.amazonaws.com"
REPOSITORY_NAME="flask-app"
IMAGE_TAG="latest"  # or a specific tag

# Run the container (adjust ports and other options as needed)
docker run -d -p 5000:5000 $ECR_URL/$REPOSITORY_NAME:$IMAGE_TAG
