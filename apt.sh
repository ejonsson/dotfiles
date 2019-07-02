#!/bin/bash

if [ "$(id -u)" != "0" ]; then
  echo "This script must be run as root"
  echo "Plese use sudo or su"
  exit 1
fi


apt install \
  tmux \
  stow \
  build-essential \
  p7zip \
  p7zip-full \
  xz-utils \
  coreutils \
  findutils \
  dnsutils \
  mlocate \
  tcpdump \
  colordiff \
  moreutils \
  atop \
  htop \
  iotop \
  lsof \
  tree \
  ncdu \
  rsync \
  whois \
  vim \
  strace \
  wget \
  curl \
  git \
  python3 \
  python3-pip \
  python3-dev \
  cowsay \
  fortune-mod \
  fortunes \
  lolcat \
  nodejs \
  npm \
  linux-tools-common \
  linux-tools-`uname -r`


pip3 install virtualenv
pip3 install virtualenvwrapper

