ENV['INLINEDIR'] = File.dirname(File.expand_path(__FILE__))

require 'un'
default_root="/Users/Oshimi/www/data"
default_port="80"
ARGV[0]=default_root unless ARGV[0]
ARGV[1]='-p'
ARGV[2]=default_port unless ARGV[2]
p ARGV
httpd
