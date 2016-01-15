FROM debian:jessie

RUN apt-get update
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends libnet-snmp-perl munin-node munin-plugins-extra git ca-certificates
RUN mkdir /tmp/munin-contrib-plugins && git clone https://github.com/munin-monitoring/contrib /tmp/munin-contrib-plugins && cp -r /tmp/munin-contrib-plugins/plugins/snmp/* /usr/share/munin/plugins/
RUN apt-get clean && rm -rf /var/cache/apt/archives/* /var/lib/apt/lists/* /etc/munin/plugins/* /tmp/munin-contrib-plugins

RUN \
  sed -ri 's/^log_file.*/# \0/; \
           s/^pid_file.*/# \0/; \
           s/^background 1$/background 0/; \
           s/^setsid 1$/setsid 0/; \
          ' /etc/munin/munin-node.conf && \
  /bin/echo -e "cidr_allow 192.168.0.0/16\ncidr_allow 172.16.0.0/12\ncidr_allow 10.0.0.0/8" >> /etc/munin/munin-node.conf

CMD ["/bin/sh", "-c", "munin-node-configure --shell --snmp $SNMP_ARGS | sh && exec /usr/sbin/munin-node --config /etc/munin/munin-node.conf"]
