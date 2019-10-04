FROM alpine:3.10.2

RUN apk update && apk upgrade && \
    apk add --no-cache git less openssh && \
    rm -rf /var/lib/apt/lists/* && \
    rm /var/cache/apk/*

COPY entrypoint.sh /

ENTRYPOINT ["/entrypoint.sh"]
