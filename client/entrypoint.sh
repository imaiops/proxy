#!/bin/sh

sed -i "s/IP/${IP}/g" /etc/shadowsocks.json

if [ $PORT ]; then
    sed -i "s/8388/${PORT}/g" /etc/shadowsocks.json
fi

if [ $PASSWD ]; then
    sed -i "s/PASSWORD123/${PASSWD}/g" /etc/shadowsocks.json
fi

sslocal -c /etc/shadowsocks.json -d start
polipo
tail -f /var/log/shadowsocks.log
