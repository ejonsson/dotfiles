#!/bin/bash

if [ "$(id -u)" != "0" ]; then
  echo "This script must be run as root"
  echo "Plese use sudo or su"
  exit 1
fi


pacman -S --needed \
  bash \
  lsb-release \
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
  python \
  python-pip \
  cowsay \
  fortune-mod \
  lolcat \
  nodejs \
  npm


pip install virtualenv
pip install virtualenvwrapper

