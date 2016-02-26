puts (1..100).map{|i|
  s=((i%3).zero? ? "Fizz":"") + ((i%5).zero? ? "Buzz":"")
  s.empty? ? i.to_s : s
}
