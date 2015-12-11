def sumfib(n,a,b)
	n<1 ? b : sumfib(n-1,a+b,a)
end
p sumfib((STDIN.gets.to_i+3)/2*2,1,0)-1