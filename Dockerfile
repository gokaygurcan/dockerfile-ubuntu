# gokaygurcan/dockerfile-ubuntu

FROM ubuntu:18.04

# metadata
LABEL maintainer "Gökay Gürcan <docker@gokaygurcan.com>"

ENV DEBIAN_FRONTEND="noninteractive" \
    USER=ubuntu

RUN set -ex && \
    apt-get update -qq && \
    apt-get upgrade -yqq && \
    apt-get install -yqq --no-install-recommends --no-install-suggests \
    apt-utils \
    apt-transport-https \
    aptitude \
    autoconf \
    autotools-dev \
    build-essential \
    ca-certificates \
    curl \
    dpkg-dev \
    file \
    iputils-ping \
    gcc \
    git \
    git-extras \
    gnupg \
    gzip \
    htop \
    language-pack-en \
    make \
    nano \
    net-tools \
    software-properties-common \
    sudo \
    tar \
    unzip \
    vim \
    wget

ENV LANGUAGE="en_US.UTF-8" \
    LANG="en_US.UTF-8" \
    LC_ALL="en_US.UTF-8"

RUN locale-gen en_US.UTF-8 && \
    useradd --create-home --shell /bin/bash $USER && \
    echo "$USER ALL=(ALL:ALL) NOPASSWD: ALL" > /etc/sudoers.d/$USER

RUN apt-get autoclean -yqq && \
    apt-get autoremove -yqq && \
    rm -rf /var/lib/{apt,dpkg,cache,log}/ && \
    rm -rf /tmp/* && \
    rm -rf /var/tmp/*

WORKDIR /home/$USER

USER $USER
