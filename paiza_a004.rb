def next_position(position,paths)
  next_path=paths.select{|p|
    (position[:x]-p[:a]==0 && position[:y]>p[:b]) || (position[:x]-p[:a]==1 && position[:y]>p[:c])
  }.max_by{|p|
    position[:x]-p[:a]==0 ? p[:b] : p[:c]
  }
  position[:x]-next_path[:a]==0 ? {x:position[:x]+1, y:next_path[:c]} : {x:position[:x]-1, y:next_path[:b]} if next_path
end


L,N,M=gets.split.map(&:to_i)
paths=[]
while(s=gets)
  paths << Hash[[:a,:b,:c].zip(s.split.map(&:to_i))]
end

position={x:1,y:L}

while(tmp=next_position(position,paths))
  position=tmp
end

puts position[:x]
