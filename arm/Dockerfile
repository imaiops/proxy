FROM alpine:latest

RUN apk update \
    && apk add --no-cache tzdata libev-dev libsodium-dev mbedtls-dev pcre-dev \
    && cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime \
    && apk del tzdata \
    && rm -rf /var/cache/apk

COPY polipo /usr/local/bin/polipo
COPY shadowsocks.json /etc/shadowsocks.json
COPY config /etc/polipo/config
COPY entrypoint.sh /entrypoint
COPY sslocal /usr/bin/

RUN mkdir -p /usr/share/polipo/www /var/cache/polipo /etc/polipo \
    && chmod +x /entrypoint

EXPOSE 8123 1080

ENTRYPOINT ["/entrypoint"]
