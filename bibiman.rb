a=[b=0]*5
a[0]=1
100.times{p b+=((a<<a[-5])[-1]+=a[-5]*2)-a[-5]}