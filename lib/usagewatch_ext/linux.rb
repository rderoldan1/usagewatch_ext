module Usagewatch
  # Show the current http connections on 80 port
  def self.uw_httpconns
    `netstat -an | grep :80 |wc -l`.to_i
  end
end