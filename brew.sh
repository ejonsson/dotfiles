#!/usr/bin/env bash

brew update
brew upgrade


BREW_PREFIX=$(brew --prefix)
brew install coreutils
ln -s "${BREW_PREFIX}/bin/gsha256sum" "${BREW_PREFIX}/bin/sha256sum"


brew install moreutils
brew install findutils
brew install gnu-sed --with-default-names
brew install wget --with-iri
brew install gnupg
brew install vim --with-override-system-vi
brew install grep
brew install openssh
brew install screen
brew install p7zip
brew install python
brew install autopep8
brew install coreutils
brew install findutils
brew install flake8
brew install mono
brew install mpg123
brew install mpv
brew install nasm
brew install ncdu
brew install ninja
brew install node
brew install pkg-config
brew install rsync
brew install stow
brew install streamlink
brew install telnet
brew install tree
brew install vorbis-tools
brew install wget
brew install wine
brew install winetricks
brew install yuicompressor
brew install youtube-dl
brew install koekeishiya/formulae/skhd
brew install koekeishiya/formulae/cev
brew install peco
brew install knqyf263/pet/pet
brew install m-cli
brew install lolcat


brew install caskroom/cask/brew-cask
brew cask install iterm2
brew cask install mpv
brew cask install xquartz
brew cask install visual-studio-code


brew cleanup

