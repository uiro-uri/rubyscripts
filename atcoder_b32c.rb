def caterpillar_method list
  a=b=0
  ans=-1
  score=list[a]
  while(list[b])
    if(score<=K)
      ans=b-a if ans<b-a
      b+=1
      score*=list[b] if list[b]
    else
      if a==b
        b+=1
        score*=list[b] if list[b]
      end
      score/=list[a]
      a+=1
    end
  end
  return ans+1
end

N,K=gets.split.map(&:to_i)
s=[]
while(i=gets)
  if i.to_i==0
    p N
    exit
  end
  s<<i.to_i
end

p caterpillar_method(s)
