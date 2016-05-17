def chk_digit(a)
  sum=0
  a.each_slice(2){|even,odd|
    sum+=(even>4 ? 1+2*even%10 : 2*even) + odd
  }
  return (10 - sum%10)%10
end

N=gets.to_i
x=[]
while(s=gets)
  a = s.chomp.split('').map(&:to_i)
  x<<chk_digit(a)
end

puts x
