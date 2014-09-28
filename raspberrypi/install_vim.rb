#sudo apt-get build-dep vim-gnome
#sudo apt-get install mercurial
#hg clone https://vim.googlecode.com/hg/ vim
#
#cd vim/src
#./configure --prefix=/usr/local --with-features=huge --enable-rubyinterp
#make && sudo make install
#


COMMANDS = ["sudo apt-get update", "sudo apt-get install vim-gnome mercurial -y"]

def install_vim

  COMMANDS.each { |cmd|
    run cmd
    Dir.chdir Dir.home
    run "hg clone https://vim.googlecode.com/hg/ vim"
    Dir.chdir "#{Dir.home}/vim/src"
    run "./configure --prefix=/usr/local --with-features=huge --enable-rubyinterp"
    run "make && sudo make install"
  }

end

