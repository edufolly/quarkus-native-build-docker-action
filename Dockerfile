FROM quay.io/quarkus/centos-quarkus-maven:20.2.0-java11 AS build

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]