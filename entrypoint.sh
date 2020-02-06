#!/bin/sh
REPOSITORY_REGISTRY=$1
REPOSITORY_IMAGE_URL=$2
REPOSITORY_USER=$3
REPOSITORY_TOKEN=$4

OS_REGISTRY=$5
OS_IMAGE_URL=$6
OS_USER=$7
OS_TOKEN=$8

echo -n ${DOCKER_TOKEN} | docker login -u ${REPOSITORY_USER} --password-stdin ${REPOSITORY_REGISTRY}
docker pull ${REPOSITORY_IMAGE_URL}
echo -n ${OS_TOKEN} | docker login -u ${OS_USER} --password-stdin ${OS_REGISTRY}
docker tag ${REPOSITORY_IMAGE_URL} ${OS_IMAGE_URL}
docker push ${OS_IMAGE_URL}
docker logout
