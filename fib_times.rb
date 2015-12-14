fib = 0,1
((STDIN.gets.to_i+1)/2*2+2).times{fib[0],fib[1] = fib[1] , fib[0]+fib[1] }
p fib[0]-1