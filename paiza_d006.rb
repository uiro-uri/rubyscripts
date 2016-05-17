N,M,K=STDIN.gets.chomp.split.map(&:to_i)
C=STDIN.gets.chomp.split.map(&:to_f)
score=[]
while(s=STDIN.gets)
  score << s.chomp.split.map(&:to_f).zip(C).inject(0.5){|sum,i|sum+(i[0]*i[1])}.to_i
end
puts score.sort.reverse[0..(K-1)]
