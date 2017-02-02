#!/bin/sh
export NAMESERVERS=$(cat /etc/resolv.conf | grep "nameserver" | awk '{print $2}' | tr '\n' ' ')
cd /etc/nginx/conf.d
for i in *; do sed -i "s@REPLACE-WITH-NAMESERVERS@$NAMESERVERS@g" "$i"; done
exec nginx -g "daemon off;"