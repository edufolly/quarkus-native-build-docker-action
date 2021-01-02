#!/bin/sh

set -e

./gradlew build -Dquarkus.package.type=native -Dquarkus.native.container-build=true

ls build/

cp build/*-runner $1
