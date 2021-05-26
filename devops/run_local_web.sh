#!/usr/bin/env bash

ROOT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && cd .. && pwd )"

# build
${ROOT_DIR}/devops/build_web.sh

docker run \
    -it \
    --rm \
    -p 3000:80 \
    -e REACT_APP_API_URL=http://localhost:808 \
    minik_web_app