#!/bin/bash

HOME=/home/`whoami`


if [[ $(uname -s) == Darwin ]]
then
    # Make home/end key jump to beginning/end of line
    mkdir -p ~/Library/Keybindings
    cp macos/DefaultKeyBinding.dict ~/Library/Keybindings/
		HOME=/Users/`whoami`
    ./brew.sh
elif [[ $(lsb_release -is) == Arch ]]
then
  ./pacman.sh
elif [[ $(lsb_release -is) == Centos ]]
then
  ./yum.sh
elif [[ $(lsb_release -is) == Ubuntu ]]
then
  ./apt.sh
fi


function delete_existing {
  for filename in $1; do
    if [[ -f $HOME/$filename || -L $HOME/$filename ]]; then
      echo "Deleting file $HOME/$filename"
      rm -f "$HOME/$filename"
    fi
  done
}



for app in bash tmux vim; do
  CONFLICTS=$(stow -nv "$app" 2>&1 | awk '/\* existing target is/ {print $NF}')
  echo "$CONFLICTS"
  delete_existing "$CONFLICTS"
  stow $app
done


