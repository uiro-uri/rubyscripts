#count zero factors in a polynomial 
p STDIN.gets.chomp.split(?+).select{|s|s !~ /0/}.length
