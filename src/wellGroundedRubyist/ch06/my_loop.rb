#!/usr/bin/env ruby
def my_loop
  yield while true
end

my_loop { puts "My-looping forever!"}
