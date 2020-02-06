#!/bin/sh
ORIGIN_REGISTRY=$1
ORIGIN_IMAGE_URL=$2
ORIGIN_USER=$3
ORIGIN_TOKEN=$4

TARGET_REGISTRY=$5
TARGET_IMAGE_URL=$6
TARGET_USER=$7
TARGET_TOKEN=$8

echo -n ${ORIGIN_TOKEN} | docker login -u ${ORIGIN_USER} --password-stdin ${ORIGIN_REGISTRY}
docker pull ${ORIGIN_IMAGE_URL}
echo -n ${TARGET_TOKEN} | docker login -u ${TARGET_USER} --password-stdin ${TARGET_REGISTRY}
docker tag ${ORIGIN_IMAGE_URL} ${TARGET_IMAGE_URL}
docker push ${TARGET_IMAGE_URL}
docker logout
