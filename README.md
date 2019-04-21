# Ubuntu 18.04

[![Docker Build Status](https://img.shields.io/docker/build/gokaygurcan/ubuntu.svg?style=for-the-badge&logo=docker&colorA=22b8eb)](https://hub.docker.com/r/gokaygurcan/ubuntu/) [![Travis CI](https://img.shields.io/travis/gokaygurcan/dockerfile-ubuntu.svg?style=for-the-badge&logo=travis&colorA=39a85b)](https://travis-ci.org/gokaygurcan/dockerfile-ubuntu) [![MicroBadger](https://img.shields.io/microbadger/image-size/gokaygurcan/ubuntu.svg?style=for-the-badge&colorA=337ab7&colorB=252528)](https://microbadger.com/images/gokaygurcan/ubuntu)

---

<h2>Environment variables</h2>

| Name     | Value       |
| -------- | ----------- |
| LANGUAGE | en_US.UTF-8 |
| LANG     | en_US.UTF-8 |
| LC_ALL   | en_US.UTF-8 |

<h2>Available packages</h2>

- apt-utils
- apt-transport-https
- aptitude
- autoconf
- autotools-dev
- build-essential
- ca-certificates
- curl
- dpkg-dev
- file
- iputils-ping
- gcc
- git
- git-extras
- gnupg
- gzip
- htop
- language-pack-en
- make
- nano
- net-tools
- software-properties-common
- sudo
- tar
- unzip
- vim
- wget

<h2>Usage</h2>

To pull the image

```bash
docker pull gokaygurcan/ubuntu
```

To start an interactive shell

```bash
docker run --rm -it gokaygurcan/ubuntu /bin/bash
```

---

[![Buy me a coffee](https://www.buymeacoffee.com/assets/img/guidelines/download-assets-sm-2.svg)](https://www.buymeacoffee.com/gokaygurcan)
