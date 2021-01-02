#!/bin/sh

set -e

gradle -b build.gradle clean buildNative

# ./gradlew build -Dquarkus.package.type=native

cp build/*-runner $1
