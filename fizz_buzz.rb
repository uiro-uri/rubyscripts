1.upto(100){|i|puts (i.to_s + ((i%3).zero? ? "Fizz":"") + ((i%5).zero? ? "Buzz":"")).sub(/\d+(\D+)/,'\1') }
