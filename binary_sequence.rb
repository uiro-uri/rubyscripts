X,Y=STDIN.gets.split(?,).map(&:to_i)
#elements=(0..X).map{|i|2**i-1}
(0..X).to_a.repeated_combination(4){|a, b, c| printf("(%d, %d, %d) ", a, b, c) }
