class Fixnum
  def split(n)
    return [] if n==0
    (0..self).map{|i|
      (self-i).split(n-1).map{|j|j+[i]}
    }
  end
end
