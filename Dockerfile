# gokaygurcan/dockerfile-ubuntu

FROM ubuntu:bionic

# metadata
LABEL maintainer "Gökay Gürcan <docker@gokaygurcan.com>"

ENV DEBIAN_FRONTEND="noninteractive" \
    LANGUAGE="en_US.UTF-8" \
    LANG="en_US.UTF-8" \
    LC_ALL="en_US.UTF-8" \
    USER="ubuntu"

RUN set -ex && \
    # configure apt to always assume Y
    echo "APT::Get::Assume-Yes \"true\";" > /etc/apt/apt.conf.d/90assumeyes && \
    # update package sources
    apt-get update -qq && \
    # upgrade packages
    apt-get upgrade -yqq && \
    apt-get dist-upgrade -yqq && \
    # install packages
    apt-get install -yqq --no-install-recommends --no-install-suggests \
    apt \
    apt-utils \
    apt-transport-https \
    aptitude \
    aria2 \
    autoconf \
    autotools-dev \
    brotli \
    build-essential \
    ca-certificates \
    curl \
    dnsutils \
    dpkg-dev \
    file \
    iputils-ping \
    gcc \
    git \
    git-extras \
    gnupg \
    gnupg2 \
    gzip \
    htop \
    jq \
    language-pack-en \
    make \
    nano \
    nmap \
    net-tools \
    python3-pip \
    openssh-client \
    openssh-server \
    software-properties-common \
    sqlite3 \
    sudo \
    tar \
    unzip \
    vim \
    wget && \
    # install github cli
    apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-key C99B11DEB97541F0 && \
    apt-add-repository https://cli.github.com/packages && \
    apt-get update -qq && \
    apt-get install -yqq --no-install-recommends --no-install-suggests gh && \
    # setup locale
    locale-gen en_US.UTF-8 && \
    # create new user
    useradd --create-home --shell /bin/bash $USER && \
    # grant root privileges
    echo "$USER ALL=(ALL:ALL) NOPASSWD: ALL" > /etc/sudoers.d/$USER && \
    # clean up
    apt-get autoclean -yqq && \
    apt-get autoremove -yqq && \
    rm -rf /var/lib/{apt,dpkg,cache,log}/ && \
    rm -rf /tmp/* && \
    rm -rf /var/tmp/* && \
    # limits
    echo '* soft nofile 65536' >> /etc/security/limits.conf && \
    echo 'root soft nofile 65536' >> /etc/security/limits.conf && \
    echo '* hard nofile 65536' >> /etc/security/limits.conf && \
    echo 'root hard nofile 65536' >> /etc/security/limits.conf && \
    echo 'session required pam_limits.so' >> /etc/pam.d/common-session && \
    echo 'session required pam_limits.so' >> /etc/pam.d/common-session-noninteractive && \
    echo 'DefaultLimitNOFILE=65536' >> /etc/systemd/system.conf

WORKDIR /home/$USER

USER $USER
