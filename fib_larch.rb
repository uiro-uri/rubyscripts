#!/opt/freeware/bin/ruby
def fib(n,a,b)
	n<1 ? b : fib(n-1,a+b,a)
end
p fib(1000,1,0)
