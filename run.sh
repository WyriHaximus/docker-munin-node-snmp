munin-node-configure --shell --snmp $SNMP_ARGS | sh && \
./set-hostname.sh && \
exec /usr/sbin/munin-node --config /etc/munin/munin-node.conf