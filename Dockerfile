# FROM docker:stable

# RUN apk update \
#   && apk upgrade \
#   && apk add --no-cache git bash openjdk11

FROM quay.io/quarkus/centos-quarkus-maven:20.2.0-java8 AS build
COPY src /usr/src/app/src
COPY build.gradle /usr/src/app
COPY settings.gradle /usr/src/app
COPY gradle.properties /usr/src/app
USER root
RUN chown -R quarkus /usr/src/app
USER quarkus
RUN gradle -b /usr/src/app/build.gradle build -Dquarkus.package.type=native

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]