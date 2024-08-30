# gokaygurcan/dockerfile-ubuntu

FROM ubuntu:noble
LABEL maintainer "Gökay Gürcan <docker@gokaygurcan.com>"

# set up environment variables
ENV DEBIAN_FRONTEND="noninteractive" \
    LANGUAGE="en_US.UTF-8" \
    LANG="en_US.UTF-8" \
    LC_ALL="en_US.UTF-8" \
    TZ="Europe/Amsterdam" \
    USER="ubuntu"

# install packages
RUN set -ex && \
    # enable retry logic for apt up to 5 times
    echo "APT::Acquire::Retries \"5\";" > /etc/apt/apt.conf.d/80-retries && \
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
    adduser \
    apt \
    apt-utils \
    apt-transport-https \
    aptitude \
    atop \
    aria2 \
    autoconf \
    autotools-dev \
    bash-completion \
    bash \
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
    dpkg \
    dpkg-dev \
    fdisk \
    file \
    findutils \
    gcc \
    git \
    git-extras \
    gnupg \
    gnupg2 \
    grep \
    gzip \
    hostname \
    htop \
    iproute2 \
    iptables \
    iputils-ping \
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
    passwd \
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
    tcpdump \
    telnet \
    time \
    tree \
    tzdata \
    unzip zip \
    vim \
    wget \
    whois \
    zip && \
    # install GitHub CLI
    curl -fsSL https://cli.github.com/packages/githubcli-archive-keyring.gpg | sudo dd of=/usr/share/keyrings/githubcli-archive-keyring.gpg && \
    sudo chmod go+r /usr/share/keyrings/githubcli-archive-keyring.gpg && \
    echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/githubcli-archive-keyring.gpg] https://cli.github.com/packages stable main" | sudo tee /etc/apt/sources.list.d/github-cli.list > /dev/null && \
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
