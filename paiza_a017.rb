H,W,N=gets.split.map(&:to_i)
pieces=[]
while(s=gets)
  pieces << s.split.map(&:to_i)
end

game_area=Array.new(H)
game_area.map!{|i| "."*W}
bottom=[0]*W
pieces.each{|h,w,x|
  game_area[bottom[x,w].max,h].map!{|s|s[x,w]='#'*w}
  bottom.fill(bottom[x,w].max + h, x, w)
}

puts game_area.reverse
