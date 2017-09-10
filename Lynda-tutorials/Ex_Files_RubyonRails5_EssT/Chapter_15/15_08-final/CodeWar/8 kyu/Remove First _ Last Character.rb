Test_Arr = ['eloquent', 'country', 'person', 'place' , 'ok']

def remove_char(s)
  s[0] = ''
  s.chop!
end

Test_Arr.each { |x| puts remove_char(x) }




def remove_char1(s)
  s[1...-1]
end

# 1...n-1 equals 1 .. n-2
def remove_char2(s)
  s[1..-2]
end

def remove_char1_1(s) # more precise version
  s.length <=2 ? "" : s[1...-1] # if <=2, return ""; else return s[1...-1]
end

Test_Arr.each { |x| puts remove_char1(x) }
Test_Arr.each { |x| puts remove_char2(x) }
Test_Arr.each { |x| puts remove_char1_1(x) }




def remove_char3(s)
  word = s.split('')
  word.pop
  word.shift
  word.join
end

Test_Arr.each { |x| puts remove_char3(x) }
