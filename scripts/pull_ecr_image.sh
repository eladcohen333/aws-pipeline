#!/bin/bash

# Define variables
AWS_REGION="us-east-1"
ECR_URL="794038243494.dkr.ecr.us-east-1.amazonaws.com"
REPOSITORY_NAME="flask-app"
IMAGE_TAG="latest"  # or a specific tag

# Login to ECR
aws ecr get-login-password --region $AWS_REGION | docker login --username AWS --password-stdin $ECR_URL

# Pull the image
docker pull $ECR_URL/$REPOSITORY_NAME:$IMAGE_TAG
