p (0..(STDIN.gets.to_i+1)/2*2+1).inject([0, 1]) { |fib| fib[0],fib[1] = fib[1] , fib[0]+fib[1] }[0]-1