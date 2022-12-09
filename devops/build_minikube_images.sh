#!/usr/bin/env bash

ROOT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && cd .. && pwd )"
TAG_BACKEND=minik_backend:v1
TAG_WEB_APP=minik_web_app:v1

# use minikube's docker
eval $(minikube docker-env)

# build backend
${ROOT_DIR}/devops/build_backend.sh ${TAG_BACKEND}

# build web
${ROOT_DIR}/devops/build_web.sh ${TAG_WEB_APP}
