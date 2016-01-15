#!/usr/bin/env bash
if [ -n "$MUNIN_HOST_NAME" ]; then
    /bin/echo -e "host_name ${MUNIN_HOST_NAME}" >> /etc/munin/munin-node.conf;
fi;
