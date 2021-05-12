#!/usr/bin/env bash

ROOT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && cd .. && pwd )"
BACKEND_DIR=${ROOT_DIR}/backend-service
# default tag
TAG=minik_backend

# tag image
[ ! -z "$1" ] && TAG=$1

# build jar
${BACKEND_DIR}/gradlew build

# build image
docker build -t ${TAG} ${BACKEND_DIR}
