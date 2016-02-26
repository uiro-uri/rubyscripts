include "Math"
def bisectional_method(min, max, &func)
  mid = (min + max) /2
  executed = func.call(mid)
  return mid if executed == 0
  return nil if mid==min
  return bisectional_method(min, mid, &func) if executed > 0
  return bisectional_method(mid, max, &func) if executed < 0
end


#increacing integer function
function = lambda{|x| x * x -100}

min = (ARGV[0] || -100).to_i
max = (ARGV[1] || 100).to_i

print bisectional_method(min,max,&function) || "Not Found"
