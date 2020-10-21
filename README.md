# Ubuntu 18.04.5 LTS (bionic)

[![Docker Build Status](https://img.shields.io/docker/build/gokaygurcan/ubuntu.svg?style=for-the-badge&logo=docker&colorA=22b8eb)](https://hub.docker.com/r/gokaygurcan/ubuntu/) [![MicroBadger](https://img.shields.io/microbadger/image-size/gokaygurcan/ubuntu.svg?style=for-the-badge&colorA=337ab7&colorB=252528)](https://microbadger.com/images/gokaygurcan/ubuntu)

---

## Environment variables

| Name     | Value       |
| -------- | ----------- |
| LANGUAGE | en_US.UTF-8 |
| LANG     | en_US.UTF-8 |
| LC_ALL   | en_US.UTF-8 |

## Available packages

- apt (apt, apt-get)
- apt-utils
- apt-transport-https
- aptitude
- aria2 (aria2c)
- autoconf
- autotools-dev
- brotli
- build-essential (g++, gcc)
- ca-certificates
- curl
- dnsutils (dig, nslookup, nsupdate)
- dpkg-dev
- file
- gh
- git
- git-extras
- gnupg / gnupg2
- gzip
- htop
- iputils-ping (ping, ping4, ping6)
- jq
- language-pack-en
- make
- nano
- net-tools (netstat, ifconfig, route)
- nmap
- python3-pip (pip3)
- ssh-client
- ssh-server
- software-properties-common
- sqlite3
- sudo
- tar
- unzip
- vim
- wget

## Usage

To pull the image

```bash
docker pull gokaygurcan/ubuntu
```

To start an interactive shell

```bash
docker run --rm -it gokaygurcan/ubuntu bash
```
