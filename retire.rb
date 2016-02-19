retire=[STDIN.gets.chomp]
reration={}
while(s=STDIN.gets)
  reration.merge!(Hash[*s.chomp.split(?,)])
end

retire|=reration.select{|key,value|retire.include?(value)}.keys
while(reration.reject!{|key,value|retire.include?(key)})
  retire|=reration.select{|key,value|retire.include?(value)}.keys
end

p reration.length
