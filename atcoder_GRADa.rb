def measure(wall,start,goal)
  head_start=[start]
  head_goal=[goal]
  distance = 1
  distance_list=[]
  until(head_start.empty? && head_goal.empty?)
    distance_list+=head_start.map{|i|[i,distance]}
    distance_list+=head_goal.map{|i|[i,-distance]}
    wall+=head_start
    wall+=head_goal
    head_start=head_start.inject([]){|result,item|result+[item+1,item-1,item+W,item-W]}.uniq
    head_goal=head_goal.inject([]){|result,item|result+[item+1,item-1,item+W,item-W]}.uniq
    head_start-=wall
    head_goal-=wall
    distance+=1
  end
  distance_list = distance_list.to_h
  distance_list.default = 0
  return distance_list
end

buff=STDIN.gets.split.map(&:to_i)
H,W=buff[0],buff[1]+2
maze=[]
while(s=STDIN.gets)
  maze<<'#'
  maze+=s.chomp.split("")
  maze<<'#'
end

start=maze.index('S')
goal=maze.index('G')
path=[]
wall=[]

maze.each_with_index.inject([path,wall]) do |result,(c,i)|
  result[0] << i if c=='.'
  result[1] << i if c=='#'
  result
end
wall +=(-W..-1).to_a
wall +=((H*W)..(H*W+W)).to_a
distance_list = measure(wall,start,goal)

score = wall.map do |i|
  n=distance_list.values_at(i+1,i-1,i+W,i-W)
  (n.select{|e|e>0}.min||-1000) - (n.select{|e|e<0}.max||1000)
end

p score.max
