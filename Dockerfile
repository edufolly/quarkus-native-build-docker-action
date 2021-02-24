# FROM quay.io/quarkus/ubi-quarkus-native-image:20.3-java11 AS build
FROM quay.io/quarkus/ubi-quarkus-native-image:21.0-java11 AS build

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]