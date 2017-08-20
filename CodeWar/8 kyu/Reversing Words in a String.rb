Test_Arr = ['I am an expert at this', 'This is so easy', 'no one cares', '', 'CodeWars']

def reverse(string)
  string.split(" ").reverse.join(" ")
end

Test_Arr.each {|words| print reverse(words), "\n"}




def reverse1(string)
  words = string.split(" ")
  sentence = words.reverse.join(" ")
  return sentence
end

Test_Arr.each {|words| print reverse1(words), "\n"}




def reverse2(string)
  string.scan(/\w+/).reverse.join(' ')
end

Test_Arr.each {|words| print reverse2(words), "\n"}
