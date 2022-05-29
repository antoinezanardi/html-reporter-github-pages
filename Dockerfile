FROM alpine:latest

RUN apk update && \
    apk add --no-cache bash wget unzip && \
    rm -rf /var/cache/apk/*

ENV ROOT=/app

RUN mkdir -p $ROOT

WORKDIR $ROOT
COPY ./entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]