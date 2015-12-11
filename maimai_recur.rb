def maimai(n,a,b)
	return 0 if n<1
    return maimai(n-2,2*a+b,a+b)+a+b
end
n=gets.to_i
p maimai(n,1,1)
