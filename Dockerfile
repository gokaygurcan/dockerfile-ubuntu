# gokaygurcan/dockerfile-ubuntu

FROM ubuntu:18.04

LABEL maintainer="Gökay Gürcan <docker@gokaygurcan.com>"

ENV DEBIAN_FRONTEND="noninteractive"

RUN apt-get update -qq && \
    apt-get install -yqq --no-install-recommends \
    sudo \
    language-pack-en && \
    apt-get autoclean -yqq && \
    apt-get autoremove -yqq && \
    rm -rf /var/lib/apt/lists/*

ENV LANGUAGE="en_US.UTF-8" \
    LANG="en_US.UTF-8" \
    LC_ALL="en_US.UTF-8"

RUN locale-gen en_US.UTF-8 && \
    useradd --create-home --shell /bin/bash ubuntu && \
    echo "ubuntu ALL=(ALL:ALL) NOPASSWD: ALL" > /etc/sudoers.d/ubuntu

USER ubuntu

ENV HOME /home/ubuntu

WORKDIR /home/ubuntu
