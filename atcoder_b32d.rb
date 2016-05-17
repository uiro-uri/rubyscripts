def brute_force(item,limit)
  return 0 if item.empty?
  return brute_force(item[1..-1],limit) if item[0][:weight]>limit
  return [brute_force(item[1..-1],limit),brute_force(item[1..-1],limit-item[0][:weight])+item[0][:value]].max
end


N,W=gets.split.map(&:to_i)
item = []

while(i=gets)
  i=i.split.map(&:to_i)
  item<<{value:i[0],weight:i[1]}
end

p brute_force(item,W)
