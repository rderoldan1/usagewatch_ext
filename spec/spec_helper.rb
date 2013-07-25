require 'rubygems'
require 'bundler/setup'
require 'coveralls'
Coveralls.wear!

OS = RUBY_PLATFORM
if OS.include? "darwin"
  require "usagewatch_ext"
  puts "Testing Mac Version"
elsif OS.include? "linux"
  require "usagewatch"
  puts "Testing Linux Version"
  puts `uname -a`
end

RSpec.configure do |config|

end
