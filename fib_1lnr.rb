puts ((0..(STDIN.gets.to_i+1)/2*2).inject([0, 1]) { |fib| fib << fib[-2]+fib[-1] })
