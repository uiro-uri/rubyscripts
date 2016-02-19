puts (1..100).inject(Array.new){|result,i|result<<((i%3).zero? ? "Fizz":"") + ((i%5).zero? ? "Buzz":"")}
