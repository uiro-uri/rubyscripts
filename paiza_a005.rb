A,B,N=gets.split.map(&:to_i)
pins = gets.split.map(&:to_i)

frames=[]
until(pins.empty?)
  if pins[0]==B
    frames << pins.shift(1)
  else
    frames << pins.shift(2)
  end
end
frames = frames + [[0]]*2
score=0
frames.each_cons(3){|f1,f2,f3|
  f123=f1+f2+f3
  if f123[0]==B
    score += B+f123[1]+f123[2]
  elsif f123[0]+f123[1]==B
    score += B+f123[2]
  else
    score += f123[0]+f123[1]
  end
}

puts score
