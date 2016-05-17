S=gets.chomp
K=gets.to_i
result=(0..(S.length-K)).inject([]){|mem,i|mem|[S[i...(i+K)]]}
p result.size
