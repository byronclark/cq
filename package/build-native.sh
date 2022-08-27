#!/bin/bash -e

cd "$( dirname "${BASH_SOURCE[0]}" )"

native-image --report-unsupported-elements-at-runtime \
             --initialize-at-build-time \
             --no-server \
             -jar ../target/cq.jar \
             -H:ReflectionConfigurationFiles=./reflection-config.json \
             -H:Name=../target/cq
