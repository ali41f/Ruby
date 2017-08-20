=begin

ROT13 is a simple letter substitution cipher that replaces a letter with the letter 13 letters after it in the alphabet.
ROT13 is an example of the Caesar cipher.

Create a function that takes a string and returns the string ciphered with Rot13.
If there are numbers or special characters included in the string, they should be returned as they are.
Only letters from the latin/english alphabet should be shifted, like in the original Rot13 "implementation".

Please note that using "encode" in Python is considered cheating.

=end

Test_Arr = ["grfg", "Grfg", "Pbqrjnef", "Ehol vf pbby!", "10+2 vf gjryir."]

def rot13(string)
  string.tr('A-Za-z', 'N-ZA-Mn-za-m')
end

Test_Arr.each {|string| print rot13(string), "\n"}


def rot13_1(string)
  string.gsub /[a-zA-Z]/ do |s|
    ascii = s.ord
    base = if ascii >= 'a'.ord then 'a'.ord else 'A'.ord end
    ((ascii - base + 13) % 26 + base).chr
  end
end

Test_Arr.each {|string| print rot13_1(string), "\n"}


def rot13_2(string)
  lower = 'a'..'z'
  upper = 'A'..'Z'
  h = Hash[lower.zip(lower.to_a.rotate(13)) +
               upper.zip(upper.to_a.rotate(13))]
  string.gsub /[a-zA-Z]/, h
end

Test_Arr.each {|string| print rot13_2(string), "\n"}


def rot13_3(string)
  string.each_char.map { |c| rot13c(c) }.join
end

def rot13c(c)
  case c
    when /[a-m]/
      (c.ord + 13).chr
    when /[A-M]/
      (c.ord + 13).chr
    when /[n-z]/
      (c.ord - 13).chr
    when /[N-Z]/
      (c.ord - 13).chr
    else
      c
  end
end

Test_Arr.each {|string| print rot13_3(string), "\n"}