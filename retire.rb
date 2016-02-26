class Reration < Hash
  def retire!(retired_person)
    begin
      retired_person|=self.select{|key,value|retired_person.include?(value)}.keys
    end while(self.reject!{|key,value|retired_person.include?(key)})
    return self
  end
end

retired_person=STDIN.gets.chomp.split.map(&:to_sym)
respect_reration=Reration.new
while(s=STDIN.gets)
  respect_reration.merge!(Hash[*s.chomp.split(?,).map(&:to_sym)])
end

p respect_reration.retire!(retired_person).size
