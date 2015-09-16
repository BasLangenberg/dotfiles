# Dotfile Repository for Bas Langenberg

This is my personal dotfile repo. I'm using this as a base for new installations or system I frequently work on.

This repository used bash-it, but in the end this was to heavy for my uses. I'm working with my own configuration files while contemplating a possible move to zsh.

Feel free to use this, although there will be much better examples over on Github. This is how *i* like it, and it's standing on the shoulders of giants.

As always, this is a work in progress and will never be done.

## Notes on Cygwin
Although I do not really dislike Windows and think it has a place in our world, I am not happy with the lack of a decent terminal experience + the tools we have on *nix Os' are severly missed.

In order to make this installation reproducable, (Packages and such) the following instructions can be used. (Borrowed from [this gist](https://gist.github.com/maxxd/6753145))

    # Dump list of all installed packages (except libraries)
    cygcheck -cd | tail -n +3 | cut -f 1 -d " " | grep -iv ^lib | grep -iv ^_ > packages.txt
    
    # Show list of package name (comma separated) in a suitable format for re-installation
    sed -e :a -e '$!N; s/\n/,/; ta' packages.txt
    
    # Reinstall packages from list
    #/cygdrive/c/cygwin/setup -q --packages `sed -e :a -e '$!N; s/\n/,/; ta' packages.txt`
