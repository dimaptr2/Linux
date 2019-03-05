#!/bin/bash

if (($(stat -c %s "/scripts/ping.log") > 20971520))
then
cp -f /scripts/ping.log  /scripts/ping_old.log
rm -r /scripts/ping.log
touch /scripts/ping.log
fi

if ping -c 4 10.200.214.1 >> /dev/null
then
echo "$(date +%Y-%m-%d_%H-%M-%S)   -   The network is available" >> /scripts/ping.log
else
/etc/init.d/networking restart
echo "$(date +%Y-%m-%d_%H-%M-%S)   -   Network restarted" >> /scripts/ping.log
fi
