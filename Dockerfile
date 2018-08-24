# gokaygurcan/dockerfile-ubuntu

FROM ubuntu:18.04

LABEL maintainer="Gökay Gürcan <docker@gokaygurcan.com>"

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
    gcc \
    git \
    gnupg \
    gzip \
    language-pack-en \
    make \
    software-properties-common \
    sudo \
    tar \
    unzip \
    wget

ENV LANGUAGE="en_US.UTF-8" \
    LANG="en_US.UTF-8" \
    LC_ALL="en_US.UTF-8"

RUN locale-gen en_US.UTF-8 && \
    useradd --create-home --shell /bin/bash $USER && \
    echo "$USER ALL=(ALL:ALL) NOPASSWD: ALL" > /etc/sudoers.d/$USER

RUN apt-get autoclean -yqq && \
    apt-get autoremove -yqq && \
    rm -rf /var/lib/apt/lists/* && \
    rm -rf /tmp/* && \
    rm -rf /var/tmp/*

WORKDIR /home/$USER

USER $USER

