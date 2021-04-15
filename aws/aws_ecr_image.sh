#/bin/env bash

# AWS region; according to your geographic location.
AWS_REGION=eu-central-1
# You may find this in your "IAM dashboard".
AWS_ACCOUNT_ID=

REPO_NAME=fast_api_app
# The Docker image name must match the name defined in the file `build.sh`
DOCKER_IMAGE=fastapi:latest

# Login
# The password will be stored at: ~/.docker/config.json
/opt/bin/aws ecr get-login-password  --region $AWS_REGION | docker login --username AWS --password-stdin $AWS_ACCOUNT_ID.dkr.ecr.$AWS_REGION.amazonaws.com

# Create repository
/opt/bin/aws ecr create-repository --repository-name $REPO_NAME --region $AWS_REGION

# Tag your image so you can push the image to this repository
docker tag $DOCKER_IMAGE $AWS_ACCOUNT_ID.dkr.ecr.$AWS_REGION.amazonaws.com/$REPO_NAME

# Push the docker image to AWS repository
docker push $AWS_ACCOUNT_ID.dkr.ecr.$AWS_REGION.amazonaws.com/$REPO_NAME
