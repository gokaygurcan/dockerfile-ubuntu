# Ubuntu 20.04 (Focal)

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
- binutils
- bison
- brotli
- build-essential (g++, gcc)
- bzip2
- coreutils
- ca-certificates
- curl
- dbus
- dialog
- dnsutils (dig, nslookup, nsupdate)
- dpkg-dev
- file
- iproute2
- iputils-ping
- gcc
- gh (github.com/cli/cli)
- git
- git-extras
- gnupg (v1, v2)
- gzip
- htop
- iputils-ping (ping, ping4, ping6)
- jq
- language-pack-en
- locales
- make
- nano
- net-tools (netstat, ifconfig, route)
- nmap
- p7zip-rar
- pkg-config
- python (python3, pip3, venv)
- rsync
- ssh-client
- ssh-server
- software-properties-common
- sqlite
- sudo
- tar
- tzdata
- unzip zip
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
