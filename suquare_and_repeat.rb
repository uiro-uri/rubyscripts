def square_factor i
  n = 10**i+1
  limit=10**(i/4+1)
  j=3
  while(j*j<limit) do
    return j if (n%(j*j)).zero?
    j+=2
  end
  return nil
end

p (1..30).map{|i|square_factor(i)}
