#!/bin/bash
echo "${DOCKER_PASSWORD}" | docker login -u "${DOCKER_USERNAME}" --password-stdin
docker push ${DOCKER_USERNAME}/docker-react:${TRAVIS_BUILD_NUMBER}
