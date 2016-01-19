#!/usr/bin/env bash
# Load custom settings
source ~/.bash_prompt
source ~/.bash_alias

# Devtools:
export EDITOR=vim
export PATH="$PATH:$HOME/.rvm/bin:/usr/local/heroku/bin" 
export PATH="$HOME/.rbenv/bin:$PATH"
if [ -z ${HOMEDRIVE+x} ]
  then
    eval "$(rbenv init -)"
fi
export PATH="$HOME/.rbenv/plugins/ruby-build/bin:$PATH"

# Speed up git prompt...
export GIT_PS1_SHOWDIRTYSTATE=
export GIT_PS1_SHOWUNTRACKEDFILES=
