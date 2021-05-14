#!/usr/bin/env bash

ROOT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && cd .. && pwd )"

# build
${ROOT_DIR}/devops/build_backend.sh

# run
docker run \
    -it \
    --rm \
    -p 8080:8080 \
    minik_backend