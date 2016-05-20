def save_unagi(a,d)
  state=Array.new(d*2+1)
  state_succ=Array.new(d*2+1)
  state[0]=""
  a.each{|i|
    (-d..d).each{|j|
      state_succ[j]=state[j+i]+"L" if state[j+i] && j+i<= d
      state_succ[j]=state[j-i]+"R" if state[j-i] && j-i>=-d
    }
    (-d..d).each{|j|state[j]=state_succ[j]}
    state_succ.fill(nil)
  }
  state
end

D,N=gets.split.map(&:to_i)

a=[]
while(s=gets)
  a << s.to_i
end

puts save_unagi(a,D).find{|i|!!i}
