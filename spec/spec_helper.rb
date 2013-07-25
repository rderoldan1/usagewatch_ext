require 'rubygems'
require 'bundler/setup'
require 'coveralls'
Coveralls.wear!

os = RUBY_PLATFORM
if os.include? "darwin"
  require "usagewatch_ext"
  puts "Testing Mac Version"
elsif os.include? "linux"
  require "usagewatch"
  puts "Testing Linux Version"
end

RSpec.configure do |config|

end
