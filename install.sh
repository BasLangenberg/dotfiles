#!/usr/bin/env bash

# This is a script used for setting up commandline tools on a Linux based system
# Written by Bas Langenberg (baslangenberg at gmail dot com) (github.com/baslangenberg)

# Prerequisites: All dotfiles need to be cloned in $HOME/dotfiles

# TODO:
#  - Add support for automatically installing bash-it
#  - Install zsh

ln -sfv "$HOME/dotfiles/.bashrc" ~
ln -sfv "$HOME/dotfiles/.vimrc" ~
ln -sfv "$HOME/dotfiles/.bash_profile" ~
ln -sfv "$HOME/dotfiles/.tmux.conf" ~
ln -sfv "$HOME/dotfiles/.bash_prompt" ~
ln -sfv "$HOME/dotfiles/.bash_alias" ~
ln -sfv "$HOME/dotfiles/.gitconfig" ~

# Setup Vundle (For vim plugins)
git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vim +PluginInstall +qall
