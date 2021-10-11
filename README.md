# Ubuntu 18.04 LTS (bionic)

[![Docker Build Status](https://img.shields.io/docker/build/gokaygurcan/ubuntu.svg?style=for-the-badge&logo=docker&colorA=22b8eb)](https://hub.docker.com/r/gokaygurcan/ubuntu/) [![MicroBadger](https://img.shields.io/microbadger/image-size/gokaygurcan/ubuntu.svg?style=for-the-badge&colorA=337ab7&colorB=252528)](https://microbadger.com/images/gokaygurcan/ubuntu)

---

## Environment variables

| Name     | Value       |
| -------- | ----------- |
| LANGUAGE | en_US.UTF-8 |
| LANG     | en_US.UTF-8 |
| LC_ALL   | en_US.UTF-8 |

## Available packages

- apt-utils
- apt-transport-https
- aptitude
- aria2
- autoconf
- autotools-dev
- build-essential
- ca-certificates
- curl
- dpkg-dev
- file
- iputils-ping
- gcc
- gh
- git
- git-extras
- gnupg
- gzip
- htop
- jq
- language-pack-en
- make
- nano
- net-tools
- ssh-client
- ssh-server
- software-properties-common
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
