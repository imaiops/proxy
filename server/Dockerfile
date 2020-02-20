FROM alpine:latest

COPY shadowsocks.json /etc/shadowsocks.json
COPY entrypoint.sh /entrypoint
COPY ssserver /usr/bin/

RUN apk update \
    && apk add --no-cache tzdata \
    && cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime \
    && chmod +x /entrypoint \
    && apk del tzdata \
    && rm -rf /var/cache/apk

EXPOSE 8388

ENTRYPOINT ["/entrypoint"]
