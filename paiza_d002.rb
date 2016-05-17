#count zero factors in a polynomial
a,b = STDIN.gets.chomp.split
if a!=b
  result = a>b ? a:b
else
  result = "eq"
end
puts result
