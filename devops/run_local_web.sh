#!/usr/bin/env bash

ROOT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && cd .. && pwd )"

# build
${ROOT_DIR}/devops/build_web.sh

docker run \
    -it \
    --rm \
    -p 3000:80 \
    -e API_URL=http://localhost:8080 \
    minik_web_app