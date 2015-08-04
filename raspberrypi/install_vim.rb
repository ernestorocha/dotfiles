#!/usr/bin/env ruby

#sudo apt-get build-dep vim-gnome
#sudo apt-get install mercurial
#hg clone https://vim.googlecode.com/hg/ vim
#
#cd vim/src
#./configure --prefix=/usr/local --with-features=huge --enable-rubyinterp
#make && sudo make install
#


def run(command)
  if !command.kind_of?(Array)
    cmd  = [command]
  else
    cmd = command
  end

  cmd.each { |line|
    puts line
    IO.popen(line) { |io|
      io.each_char do |c|
        print c
      end
    }
  }

end

COMMANDS = ["sudo apt-get update", "sudo apt-get install vim-gnome mercurial -y"]

def install_vim

  COMMANDS.each { |cmd|
    run cmd
  }

  Dir.chdir Dir.home
  run "hg clone https://vim.googlecode.com/hg/ vim"
  Dir.chdir "#{Dir.home}/vim/src"
  run "./configure --prefix=/usr/local --with-features=huge --enable-rubyinterp"
  run "make && sudo make install"

end


install_vim()
