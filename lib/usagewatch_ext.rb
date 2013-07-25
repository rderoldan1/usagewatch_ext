require "usagewatch_ext/version"

module UsagewatchExt
  os = RUBY_PLATFORM
  text =  "OS is not supported in this version."

  if os.include? "darwin"
    require "usagewatch_ext/mac"
    puts "Mac version is under development"
  elsif os.include? "linux"
    require "usagewatch/linux"
    UsagewatchExt = Usagewatch
  elsif os =~ /cygwin|mswin|mingw|bccwin|wince|emx/
    puts "Windows" + text
  else
    puts "This" + text
  end

end
