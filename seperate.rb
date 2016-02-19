class Fixnum
  def seperate
    self > 0 ?  ((1..self).inject([]){|result,i| result << [i] + (self-i).seperate}) : []
  end
end
