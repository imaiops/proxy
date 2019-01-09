#!/bin/sh
if [ $PASSWD ]; then 
    sed -i "s/PASSWORD123/${PASSWD}/g" /etc/shadowsocks.json
fi
ssserver -c /etc/shadowsocks.json -d start
tail -f /var/log/shadowsocks.log
