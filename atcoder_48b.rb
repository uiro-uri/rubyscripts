N=gets.to_i
players=[]
id=0
while(s=gets)
  rating,hand=s.split.map(&:to_i)
  players[rating]=players[rating].to_h.merge({id=>hand-1})
  id+=1
end
players.compact!
score=[]
loser=0
players.each{|hands|
  tier=(0..2).map{|i|hands.values.count(i)}
  hands.each{|id,hand| score[id]=[loser+tier[hand-2],N-loser-tier[hand-2]-tier[hand],tier[hand]-1]}
  loser+=hands.size
}
score.each{|i|puts i.join(' ')}
