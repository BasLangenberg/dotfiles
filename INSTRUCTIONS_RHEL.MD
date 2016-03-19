# Install documentation

This installation has been executed on a Ubuntu 15.10 box on 12-02-2015

## Procedure

    # This is still a WiP!

    # Install required software
    yum install git vim tmux

    # Clone repository
    git clone https://Github.com/BasLangenberg/Dotfiles.git dotfiles

    # Run install script
    chmod u+x dotfiles/install.sh
    dotfiles/install.sh

    # When Vundle is done, close vim as we need to perform manual steps for some addons
    yum install cmake python python-devel gcc-c++ gcc glibc-devel make nodejs010 nodejs010-npm
    echo "/opt/rh/nodejs010/root/lib64" > /etc/ld.so.conf.d/nodejs.conf

    cd ~/.vim/bundle/YouCompleteMe && ./install.sh
    cd ~/.vim/bundle/tern_for_vim && npm install

    # Vim works fine on start up

    # Setup of Ruby (Used with Puppet etc.)

    sudo apt-get update
    sudo apt-get install git-core curl zlib1g-dev build-essential libssl-dev libreadline-dev libyaml-dev libsqlite3-dev sqlite3 libxml2-dev libxslt1-dev libcurl4-openssl-dev python-software-properties libffi-dev
    cd
    git clone git://github.com/sstephenson/rbenv.git .rbenv
    git clone git://github.com/sstephenson/ruby-build.git ~/.rbenv/plugins/ruby-build
    git clone https://github.com/sstephenson/rbenv-gem-rehash.git ~/.rbenv/plugins/rbenv-gem-rehash
    rbenv install 2.2.3
    rbenv global 2.2.3
    ruby -v
    gem install bundler

    # Python Packages (My goto programming language)
    sudo apt-get install python python-dev python-pip python-virtualenv
