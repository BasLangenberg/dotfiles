# Install documentation

This installation has been executed on a Ubuntu 15.10 box on 12-02-2015

## Procedure

    # This is still a WiP!

    # Install required software
    yum install git vim tmux zsh

    # Clone repository
    git clone https://Github.com/BasLangenberg/Dotfiles.git dotfiles

    # Run install script
    chmod u+x dotfiles/install.sh
    dotfiles/install.sh

    # When Vundle is done, close vim as we need to perform manual steps for some addons
    yum install -y cmake python python-devel gcc-c++ gcc glibc-devel make nodejs010 nodejs010-npm
    echo "/opt/rh/nodejs010/root/lib64" > /etc/ld.so.conf.d/nodejs.conf

    cd ~/.vim/bundle/YouCompleteMe && ./install.sh
    scl enable nodejs010 bash && cd ~/.vim/bundle/tern_for_vim && npm install # Not super necessary as I don't do Javascript on RHEL

    # Vim works fine on start up

    # Setup of Ruby (Used with Puppet etc.)
    # Credit: https://www.digitalocean.com/community/tutorials/how-to-install-ruby-on-rails-with-rbenv-on-centos-7

    yum update -y
    yum install -y git-core zlib zlib-devel gcc-c++ patch readline readline-devel libyaml-devel libffi-devel openssl-devel make bzip2 autoconf automake libtool bison curl sqlite-devel
    cd
    git clone git://github.com/sstephenson/rbenv.git .rbenv
    git clone git://github.com/sstephenson/ruby-build.git ~/.rbenv/plugins/ruby-build
    git clone https://github.com/sstephenson/rbenv-gem-rehash.git ~/.rbenv/plugins/rbenv-gem-rehash
    rbenv install 2.2.3
    rbenv global 2.2.3
    
    # Logout / Login
    ruby -v
    
    echo "gem: --no-document" > ~/.gemrc
    gem install bundler

    # Python Packages (My goto programming language)
    yum install -y python27-python-pip
