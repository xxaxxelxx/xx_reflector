# ***REFLECTOR***
# Client request reflectoring module
# Part of Dockerized Distributed Streaming System

[xxaxxelxx/xx_reflector](https://index.docker.io/u/xxaxxelxx/xx_reflector/)

## Synopsis
This repo is the base for an [automated docker build](https://hub.docker.com/r/xxaxxelxx/xx_reflector/) and is part of a dockerized distributed streaming system consisting of following elements:
* [xxaxxelxx/xx_reflector](https://github.com/xxaxxelxx/xx_reflector)
* [xxaxxelxx/xx_bridgehead](https://github.com/xxaxxelxx/xx_bridgehead)
* [xxaxxelxx/xx_coverter](https://github.com/xxaxxelxx/xx_converter)
* [xxaxxelxx/xx_customerweb](https://github.com/xxaxxelxx/xx_customerweb)
* [xxaxxelxx/xx_geograph](https://github.com/xxaxxelxx/xx_geograph)
* [xxaxxelxx/xx_icecast](https://github.com/xxaxxelxx/xx_icecast)
* [xxaxxelxx/xx_liquidsoap](https://github.com/xxaxxelxx/xx_liquidsoap)
* [xxaxxelxx/xx_loadbalancer](https://github.com/xxaxxelxx/xx_loadbalancer)
* [xxaxxelxx/xx_logsplitter](https://github.com/xxaxxelxx/xx_logsplitter)
* [xxaxxelxx/xx_pulse](https://github.com/xxaxxelxx/xx_pulse)
* [xxaxxelxx/xx_reflector](https://github.com/xxaxxelxx/xx_reflector)
* [xxaxxelxx/xx_rrdcollect](https://github.com/xxaxxelxx/xx_rrdcollect)
* [xxaxxelxx/xx_rrdgraph](https://github.com/xxaxxelxx/xx_rrdgraph)
* [xxaxxelxx/xx_sshdepot](https://github.com/xxaxxelxx/xx_sshdepot)
* [xxaxxelxx/xx_sshsatellite](https://github.com/xxaxxelxx/xx_sshsatellite)

The running docker container provides a service for very special streaming purposes usable for a distributed architecture.
It presumably will not fit for you, but it is possible to tune it. If you need some additional information, please do not hesitate to ask.

This [xxaxxelxx/xx_reflector](https://hub.docker.com/r/xxaxxelxx/xx_reflector/) repo is an essential part of a complex compound used for streaming.
In case of player machines overload this module reflects incoming client requests back to the loadbalancer.
In standard working mode it redirects all incoming port 80 requests to the local icecast port 8000.
In case of overload it modifies the players iptables to redirect all incoming port 8000 requests to the local reflector (port 80). The reflector redirects them to the loadbalancer for furter distribution.
It prevents direct access from clients avoiding the loadbalancer (if the playing machine is to busy).

### Example
```bash
$ docker run -d --name reflector -e TARGET_SERVER=AUTOMATICALLY_DETECTED -e TARGET_PORT=8000 -p 80:80 --restart=always xxaxxelxx/xx_reflector
```
***

## License

[MIT](https://github.com/xxaxxelxx/xx_Liquidsoap/blob/master/LICENSE.md)
