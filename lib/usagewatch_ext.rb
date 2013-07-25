require "usagewatch_ext/version"

module UsagewatchExt
  text =  "OS is not supported in this version."

  if OS.include? "darwin"
    require "usagewatch_ext/mac"
    puts "Mac version is under development"
  elsif OS.include? "linux"
    require "usagewatch/linux"
    UsagewatchExt = Usagewatch
  elsif OS =~ /cygwin|mswin|mingw|bccwin|wince|emx/
    puts "Windows" + text
  else
    puts "This" + text
  end

end
