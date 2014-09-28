#!/usr/bin/env ruby

load "raspberrypi/install_vim.rb"

GIT_UPDATE = "git submodule foreach git pull"
USER_HOME = Dir.home
SCRIPT_ROOT = File.expand_path File.dirname(__FILE__)

LINKED_ARCHIVES = {
  "vim" => [".vim", ".vimrc", ".vim_runtime"]
}

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
  update_pathogen
end

def install_dependencies
  #dependency for syntastic - JS
  DEPENDENCIES.push('npm install -g jshint')

  DEPENDENCIES.each{ |d| run(d) }
end

def update_pathogen
  mkdir = "mkdir .vim/autload"
  cmd = "cp -f .vim/pathogen/autoload/* .vim/autoload/"
  run(mkdir)
  run(cmd)
end

def set_vim_files
  LINKED_ARCHIVES["vim"].each { |file|
    run "mv ~/#{file} ~/#{file}-bak"
    Dir.chdir USER_HOME
    run "ln -s ~/dotfiles/#{file} #{file}"
    Dir.chdir SCRIPT_ROOT
  }
end

if ARGV.empty?
  puts "commands:"
  puts "install:"
elsif ARGV[0] == "install"
  os = `uname`.chomp
  if os == "Darwin"
    if ARGV.length < 2
      update_submodules
      install_dependencies
    end
    #test for homebrew then install it first
    #install anything else
  elsif os == "Linux"
    run "./raspberrypi/install_ruby.sh"
    install_vim
    set_vim_files
  end
elsif ARGV[0] == "set"
  if ARGV[1] == "vim"
    set_vim_files
  end
elsif ARGV[0] == "update"
  update_submodules
else
  puts "invalid command"
end
