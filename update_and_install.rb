#!/usr/bin/env ruby

GIT_UPDATE = "git submodule foreach git pull"



def update_submodules
  IO.popen(GIT_UPDATE) { |io|
    io.each_char do |c|
      print c
    end
  }
end


update_submodules
