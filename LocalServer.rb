ENV['INLINEDIR'] = File.dirname(File.expand_path(__FILE__)) 

require 'un'
DefaultRoot="/Users/Oshimi/www/data"
DefaultPort="80"
ARGV[0]=DefaultRoot unless ARGV[0]
ARGV[1]='-p'
ARGV[2]=DefaultPort unless ARGV[2]
p ARGV
httpd
