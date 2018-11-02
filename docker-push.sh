#!/bin/bash
#DOCKER_USERNAME=$1
#DOCKER_PASSWORD=$2
#TRAVIS_BUILD_NUMBER=$3
echo $DOCKER_USERNAME
echo $DOCKER_PASSWORD
echo $TRAVIS_BUILD_NUMBER
echo login
echo $DOCKER_PASSWORD | docker login -u $DOCKER_USERNAME --password-stdin
#docker login -u $DOCKER_USERNAME -p $DOCKER_PASSWORD
echo push
docker push $DOCKER_USERNAME/docker-react:001
