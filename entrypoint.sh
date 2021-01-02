#!/bin/sh

set -e

./gradlew build -Dquarkus.package.type=uber-jar

ls build/

cp build/*-runner.jar "$1.jar"
