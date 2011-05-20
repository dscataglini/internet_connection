Internet Connection
===================

Checks if it can connection to the internet
by trying to resolve a hostname to an ip
I couldn't think of a faster way than dsn resolve

Install
-------
  gem install internet_connection

Example:
--------

  InternetConnection.on?  => true
  InternetConnection.off? => false

Notes:
------
If using ruby 1.9 with eventmachine please install
em-resolv-replace gem for evented thread save resolvs
