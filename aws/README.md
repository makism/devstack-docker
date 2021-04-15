
# Requirements

On your Linux install the command-line JSON processor `jq`.

# AWS CLI v2

## Installation

```curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"```

```unzip awscliv2.zip```

```sudo ./aws/install -i /opt/awscliv2 -b /opt/bin/```

## Update

To update `aws-cli v2`, append `--update` when installing.

# Deploy on AWS ECR/ECS

## Elastic Container Registry (ECR)

1. First build the image using the instructions in script `docker/build.sh`; it's pretty much standard Docker commands.

2. Setup, and follow the commands in the file `docker/aws_ecr_image.sh`. At the end you should have the image pushed sucessfuly to ECR.

3. Browse the repository at [ECR](https://eu-central-1.console.aws.amazon.com/ecr/repositories?region=eu-central-1).

## Elastic Container Service (ECS)

1. Create a cluster with "custom" image, and fill in the details (i.e. your image's url, ports, etc.).

2. Create, and start the cluster.

3. You may find the public IP address at:
    * Click on the cluster name to see the status of the cluster.
    * In the `Tasks` tab, click the name of the task to see the status of the task.
    * Click the `ENI Id` of the task to see the status of the network interface of that task.
    * On the status page of the network interface, we finally find the public IPv4 address we can use to access our freshly deployed service.

# Links

* https://medium.com/@meetakoti.kirankumar/deploying-fastapi-web-application-in-aws-a1995675087d

* https://reflectoring.io/aws-deploy-docker-image-via-web-console/
