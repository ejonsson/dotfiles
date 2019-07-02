#!/bin/bash

if [ "$(id -u)" != "0" ]; then
  echo "This script must be run as root"
  echo "Plese use sudo or su"
  exit 1
fi


yum groupinstall "Development Tools"
yum install \
  tmux \
  stow \
  p7zip \
  xz \
  coreutils  \
  findutils  \
  mlocate \
  tcpdump \
  colordiff \
  moreutils \
  atop \
  htop \
  iotop \
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
  python3-devel \
  cowsay \
  fortune-mod \
  lolcat \
  nodejs \
  npm


pip3 install virtualenv
pip3 install virtualenvwrapper

