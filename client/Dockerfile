FROM alpine:latest

RUN mkdir -p /usr/share/polipo/www /var/cache/polipo /etc/polipo
COPY polipo /usr/local/bin/polipo
COPY shadowsocks.json /etc/shadowsocks.json
COPY config /etc/polipo/config
COPY entrypoint.sh /entrypoint
COPY sslocal /usr/bin/

RUN apk update \
    && apk add --no-cache tzdata \
    && cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime \
    && apk del tzdata \
    && chmod +x /entrypoint \
    && rm -rf /var/cache/apk

EXPOSE 8123 1080

ENTRYPOINT ["/entrypoint"]
