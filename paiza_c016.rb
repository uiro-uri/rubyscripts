LEET_KEY = 'AEGIOSZ'
LEET_VAL = '4361052'
LEET_HASH = Hash[LEET_KEY.split('').zip(LEET_VAL.split(''))]
s=gets
puts s.gsub(/[#{LEET_KEY}]/, LEET_HASH)
