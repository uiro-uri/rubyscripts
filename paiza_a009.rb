def reflect(dx,dy,cell)
  case cell
  when '\\'; [ dy,  dx]
  when '/' ; [-dy, -dx]
  else [dx, dy]
  end
end

H,W=gets.split.map(&:to_i)
box=[]
while(s=gets)
  box << s.chomp
end

x,y=0,0
dx,dy=1,0
i=0
while((0...W).include?(x) && (0...H).include?(y))
  dx,dy=reflect(dx,dy,box[y][x])
  x += dx
  y += dy
  i += 1
end

puts i
