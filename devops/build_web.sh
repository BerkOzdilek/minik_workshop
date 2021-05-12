#!/usr/bin/env bash

ROOT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && cd .. && pwd )"
WEB_DIR=${ROOT_DIR}/web-app
# default tag
TAG=minik_web_app

# tag image
[ ! -z "$1" ] && TAG=$1

# build image
docker build -t ${TAG} ${WEB_DIR}
