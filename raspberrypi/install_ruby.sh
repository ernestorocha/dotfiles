#!/bin/bash

sudo apt-get install -y git curl zlib1g-dev subversion
sudo apt-get install -y openssl libreadline6-dev git-core zlib1g libssl-dev
sudo apt-get install -y libyaml-dev 
sudo apt-get install -y libxml2-dev libxslt-dev
sudo apt-get install -y autoconf automake libtool bison

git clone https://github.com/sstephenson/rbenv.git ~/.rbenv

echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.zshrc
echo 'eval "$(rbenv init -)"' >> ~/.zshrc


git clone https://github.com/sstephenson/ruby-build.git ~/.rbenv/plugins/ruby-build
