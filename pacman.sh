#!/bin/bash

sudo pacman -Syy
sudo pacman -Syu

sudo pacman -S --needed \
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
  npm \
  lsof


pip install virtualenv
pip install virtualenvwrapper

