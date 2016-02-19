class Array
  def to_comb
    self.inject{|result,i|
      if i.class==Array then
        result+=i.map{|j|j.to_comb}
      else
        result=[i]
      end
    }
  end
end
