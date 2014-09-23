#!/usr/bin/env ruby

GIT_UPDATE = "git submodule foreach git pull"
DEPENDENCIES = []

def run(command)
  IO.popen(command) { |io|
    io.each_char do |c|
      print c
    end
  }
end

def update_submodules
  run(GIT_UPDATE)
end

def install_dependencies
  #dependency for syntastic - JS
  DEPENDENCIES.push('npm install -g jshint')

  DEPENDENCIES.each{ |d| run(d) }
end

def install_pathogen
  mkdir = "mkdir .vim/autload"
  cmd = "cp -f .vim/pathogen/autoload/* .vim/autoload/"
  run(mkdir)
  run(cmd)
end



update_submodules
install_dependencies
install_pathogen
