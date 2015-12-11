def maimai(n)
    return 0 if n==0
    a=1
    b=1
    sum=0
    for i in 1..(n+1)/2 do
        sum=sum+a+b
        a_succ=2*a+b
        b_succ=a+b
        a=a_succ
        b=b_succ
    end
    
    return sum
end

n=gets.to_i
p maimai(n)

