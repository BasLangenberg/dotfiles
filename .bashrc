#!/usr/bin/env bash
# Load custom settings
source ~/.bash_prompt
source ~/.bash_alias

# Devtools:
export PATH="$PATH:$HOME/.rvm/bin:/usr/local/heroku/bin" 
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"
export PATH="$HOME/.rbenv/plugins/ruby-build/bin:$PATH"
