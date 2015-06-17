#!/usr/bin/env bash

# This is a script used for setting up commandline tools on a Linux based system
# Written by Bas Langenberg (baslangenberg at gmail dot com) (github.com/baslangenberg)

# Prerequisites: All dotfiles need to be cloned in $HOME/dotfiles

ln -sfv "$HOME/dotfiles/.bashrc" ~
ln -sfv "$HOME/dotfiles/.vimrc" ~
ln -sfn "$HOME/dotfiles/.bash_profile" ~
