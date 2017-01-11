#!/usr/bin/env bash 

PWD=$(pwd)
EASYFILES="oh-my-zsh zshrc vimrc pentadactylrc Xdefaults tmux.conf emacs.d urxvt ideavimrc stalonetrayrc xmonad bin"

# get submodules set up
git submodule init
git submodule update 

# link easy things
for dotfile in $EASYFILES
do
    ln -s $PWD/$dotfile ~/.$dotfile
done

# link harder things
mkdir -p ~/.config
ln -s $PWD/awesome ~/.config/awesome
