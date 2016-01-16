[munin-node SNMP](https://hub.docker.com/r/wyrihaximus/munin-node-snmp/)
===============
[![ImageLayers Layers](https://img.shields.io/imagelayers/layers/wyrihaximus/munin-node-snmp/latest.svg?style=flat-square)](https://imagelayers.io/?images=wyrihaximus/munin-node-snmp:latest) [![Layer Size](https://badge.imagelayers.io/wyrihaximus/munin-node-snmp:latest.svg)](https://imagelayers.io/?images=wyrihaximus/munin-node-snmp:latest) [![Docker Stars](https://img.shields.io/docker/stars/wyrihaximus/munin-node-snmp.svg?style=flat-square)](https://hub.docker.com/r/wyrihaximus/munin-node-snmp/) [![Docker Pulls](https://img.shields.io/docker/pulls/wyrihaximus/munin-node-snmp.svg?style=flat-square)](https://hub.docker.com/r/wyrihaximus/munin-node-snmp/)

## Usage ##

The following will start munin-node and autoconfigure SNMP plugins for `192.168.254.13`, it will also expose munin-node at port `12345`. `SNMP_ARGS` is passed at argument for `--snmp` when `munin-node-configure` is call upon running the container.

```
docker run -e 'SNMP_ARGS=192.168.254.13' -p 12345:4949 wyrihaximus/munin-node-snmp 
```

## Extra options ##

`-e 'MUNIN_HOST_NAME=switch01'` sets the hostname reported by munin

## Resource usage ##

One of the goals is to keep this container so small and fast as possible. While the image size is bigger then desired and is subject to optimization, it only uses 10MB in memory when running.

![Resource Usage](https://github.com/WyriHaximus/docker-munin-node-snmp/raw/master/resources.png)

## Inspired by ##

[ttakezawa/munin-node](https://github.com/ttakezawa/docker-munin-node)

## License ##

Copyright 2016 [Cees-Jan Kiewiet](http://wyrihaximus.net/)

Permission is hereby granted, free of charge, to any person
obtaining a copy of this software and associated documentation
files (the "Software"), to deal in the Software without
restriction, including without limitation the rights to use,
copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the
Software is furnished to do so, subject to the following
conditions:

The above copyright notice and this permission notice shall be
included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES
OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT
HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY,
WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR
OTHER DEALINGS IN THE SOFTWARE.
