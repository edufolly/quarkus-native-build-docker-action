#!/bin/sh

set -e

gradle -b build.gradle build -Dquarkus.package.type=native

cp build/*-runner $1
