def fib(n,a,b)
	n<1 ? b : fib(n-1,a+b,a)
end
p fib((STDIN.gets.to_i+1)/2*2+2,1,0)-1