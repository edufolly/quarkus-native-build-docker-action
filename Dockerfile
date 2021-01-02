FROM docker:stable

RUN apk update \
  && apk upgrade \
  && apk add --no-cache git bash openjdk11

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]