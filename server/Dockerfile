# Proxy Server
FROM alpine:3.8

MAINTAINER Soar

COPY shadowsocks.json /etc/shadowsocks.json
COPY entrypoint.sh /entrypoint

RUN apk update \
    && apk add --no-cache py-pip tzdata \
    && pip install shadowsocks \
    && cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime \
    && chmod +x /entrypoint \
    && apk del tzdata \
    && rm -rf /var/cache/apk

EXPOSE 8388

ENTRYPOINT ["/entrypoint"]
