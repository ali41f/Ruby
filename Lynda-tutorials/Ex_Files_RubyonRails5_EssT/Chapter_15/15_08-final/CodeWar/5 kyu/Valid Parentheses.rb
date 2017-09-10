=begin

Write a function called validParentheses that takes a string of parentheses, and determines if the order of the parentheses is valid.
validParentheses should return true if the string is valid, and false if it's invalid.

=end

Test_Arr = ["()",
            ")(()))",
            "(" ,
            "(())((()())())" ,
            ")test",
            "",
            "hi())(",
            "hi(hi)()",
            "eb(g)smgbqooo",
            "zvjn((jkvb)eoout(vcmv)rdot)ifvweng)zgaqwd"
]

def valid_parentheses(string)
  parentheses = 0
  string.split("").each do |x|
    return false if x == ")" && parentheses == 0
    parentheses += 1 if x == "("
    parentheses -= 1 if x == ")"
  end
  parentheses == 0 ? true : false
end

Test_Arr.each {|string| print valid_parentheses(string), " "}
puts


def valid_parentheses1(string)
  string.chars.each_with_object([]) do |c, stack|
    if c == '('
      stack.push(c)
    elsif c == ')'
      stack.pop or return(false)
    end
  end.empty?
end

Test_Arr.each {|string| print valid_parentheses1(string), " "}
puts


def valid_parentheses2(string)
  str = string.delete("^()")
  while str.gsub!("()",''); end
  str == ''
end

Test_Arr.each {|string| print valid_parentheses2(string), " "}
puts


def valid_parentheses3(string)
  ~ Regexp.new(string) == nil rescue false
end

Test_Arr.each {|string| print valid_parentheses3(string), " "}
puts