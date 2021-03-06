require 'resolv'
require 'resolv-replace'
if RUBY_VERSION =~ /1.9.*/
  begin
    # if you use evented machine you'll want to install this gem
    require 'em-resolv-replace'
  rescue LoadError
    # send warning on why you should use em-resolv-replace
  end
end

module InternetConnection
  # InternetConnection#on? will try to resolve a host with dns.
  # if it can you've got an internet connection
  def on?(host = 'www.example.com')
    begin
      !!Resolv.getaddress(host)
    rescue Errno::EHOSTUNREACH
      return false
    end
  end

  # exactly the opposite of on?
  def off?
    !on?
  end
  module_function :on?
  module_function :off?
end
