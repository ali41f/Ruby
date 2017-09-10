=begin

In this example you have to validate if a user input string is alphanumeric. The given string is not nil, so you don't have to check that.

The string has the following conditions to be alphanumeric:

1. At least one character ("" is not valid)
2. Allowed characters are uppercase / lowercase latin letters and digits from 0 to 9
3. No whitespaces/underscore

=end

Test_Arr = ["",
            "hello world_",
            "HELLOworld123"]

def alphanumeric?(string)
  string.length > 0 && string.each_char { |char| return false if !char.match(/[[:alnum:]]/) }
end

Test_Arr.each {|string| print alphanumeric?(string), "\n"}


def alphanumeric1?(string)
  string =~ /\A[A-z\d]+\z/
end

# similarly
def alphanumeric2?(string)
  (string.match /\A[a-zA-Z\d]+\z/)
end

Test_Arr.each {|string| print alphanumeric1?(string), "\n"}
Test_Arr.each {|string| print alphanumeric2?(string), "\n"}

def alphanumeric3?(string)
  (string =~ /\A[a-zA-Z\d]+\z/) != nil
end

Test_Arr.each {|string| print alphanumeric3?(string), "\n"}


def alphanumeric4?(string)
  /\A\w+\Z/ === string
end

Test_Arr.each {|string| print alphanumeric4?(string), "\n"}