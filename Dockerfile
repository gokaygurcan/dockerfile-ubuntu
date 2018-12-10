# gokaygurcan/dockerfile-ubuntu

FROM ubuntu:18.04

# metadata
LABEL maintainer = "Gökay Gürcan <docker@gokaygurcan.com>"
LABEL com.gokaygurcan.project.name = "dockerfile-ubuntu"
LABEL com.gokaygurcan.project.version = "1.0.1"
LABEL org.label-schema.name = "dockerfile-ubuntu"
LABEL org.label-schema.description = "Ubuntu 18.04 with necessary additions."
LABEL org.label-schema.vcs-url = "https://github.com/gokaygurcan/dockerfile-ubuntu"
LABEL org.label-schema.vendor = "gokaygurcan"
LABEL org.label-schema.version = "1.0.1"
LABEL org.label-schema.schema-version = "1.0"

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
    nano \
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
    rm -rf /var/lib/apt/lists/* && \
    rm -rf /tmp/* && \
    rm -rf /var/tmp/*

WORKDIR /home/$USER

USER $USER

