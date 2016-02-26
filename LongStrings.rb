include Math

def bisectional_method(min, max, &func)
  mid = (min + max) /2
  executed = func.call(mid)
  return mid if executed == 0
  return nil if mid==min
  return bisectional_method(min, mid, &func) if executed > 0
  return bisectional_method(mid, max, &func) if executed < 0
end

m = STDIN.gets.to_i
function = lambda{|x| (x * log10(x)).ceil - m}

p bisectional_method(2,m*2,&function) || -1
