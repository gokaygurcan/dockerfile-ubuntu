# Ubuntu 24.04.1 (Noble Numbat)

## Environment variables

| Name     | Value       |
| -------- | ----------- |
| LANGUAGE | en_US.UTF-8 |
| LANG     | en_US.UTF-8 |
| LC_ALL   | en_US.UTF-8 |

## Available packages

- adduser
- atop
- apt (apt, apt-get)
- apt-utils
- apt-transport-https
- aptitude
- aria2 (aria2c)
- autoconf
- autotools-dev
- bash-completion
- bash
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
- dpkg
- dpkg-dev
- file
- iproute2
- iputils-ping
- gcc
- gh (github.com/cli/cli)
- fdisk
- findutils
- git
- git-extras
- gnupg (v1, v2)
- gzip
- grep
- hostname
- htop
- iputils-ping (ping, ping4, ping6)
- iproute2
- iptables
- jq
- language-pack-en
- locales
- make
- nano
- net-tools (netstat, ifconfig, route)
- nmap
- p7zip-rar
- passwd
- pkg-config
- python (python3, pip3, venv)
- rsync
- ssh-client
- ssh-server
- software-properties-common
- sqlite
- sudo
- tar
- tcpdump
- telnet
- time
- tree
- tzdata
- unzip / zip
- vim
- wget
- whois

## Usage

To pull the image

```bash
docker pull gokaygurcan/ubuntu
```

To start an interactive shell

```bash
docker run --rm -it gokaygurcan/ubuntu bash
```
