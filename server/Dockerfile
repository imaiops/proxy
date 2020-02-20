FROM alpine:latest

RUN apk update \
    && apk add --no-cache tzdata \
    && cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime \
    && apk del tzdata \
    && rm -rf /var/cache/apk

COPY entrypoint.sh /entrypoint
COPY shadowsocks.json /etc/shadowsocks.json
COPY ssserver /usr/bin/

RUN chmod +x /entrypoint

EXPOSE 8388

ENTRYPOINT ["/entrypoint"]
