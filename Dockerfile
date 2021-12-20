# gokaygurcan/dockerfile-ubuntu

FROM ubuntu:focal

# metadata
LABEL maintainer "Gökay Gürcan <docker@gokaygurcan.com>"

ENV DEBIAN_FRONTEND="noninteractive" \
    LANGUAGE="en_US.UTF-8" \
    LANG="en_US.UTF-8" \
    LC_ALL="en_US.UTF-8" \
    TZ="Europe/Amsterdam" \
    USER="ubuntu"

RUN set -ex && \
    # enable retry logic for apt up to 5 times
    echo "APT::Acquire::Retries \"5\";" > /etc/apt/apt.conf.d/80-retries
    # configure apt to always assume Y
    echo "APT::Get::Assume-Yes \"true\";" > /etc/apt/apt.conf.d/90assumeyes && \
    # update timezone
    ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && \
    echo $TZ > /etc/timezone && \
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
    binutils \
    bison \
    brotli \
    build-essential \
    bzip2 \
    coreutils \
    ca-certificates \
    curl \
    dbus \
    dialog \
    dnsutils \
    dpkg-dev \
    file \
    iproute2 \
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
    libc++abi-dev libc++-dev libcurl4 \
    locales \
    make \
    nano \
    nmap \
    net-tools \
    openssh-client \
    openssh-server \
    p7zip-rar \
    pkg-config \
    python3 \
    python3-dev \
    python3-pip \
    python3-venv \
    rsync \
    software-properties-common \
    sqlite3 \
    sudo \
    tar \
    tzdata \
    unzip zip \
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
    echo 'DefaultLimitNOFILE=65536' >> /etc/systemd/system.conf && \
    echo 'DefaultLimitSTACK=16M:infinity' >> /etc/systemd/system.conf

USER $USER

WORKDIR /home/$USER
