=begin

Write a function that takes in a string of one or more words, and returns the same string,
but with all five or more letter words reversed (Just like the name of this Kata).
Strings passed in will consist of only letters and spaces. Spaces will be included only when more than one word is present.

=end

Test_Arr = ["Hey fellow warriors",
            "This is a test",
            "This is another test"]

def spinWords(string)
  x = string.split(" ")
  y = x.each do |word|
    if word.length >= 5
      word.reverse!
    end
  end
  return y.join(" ").to_s
end

Test_Arr.each {|sentence| print spinWords(sentence), "\n"}


# Most Clever Way up to now
def spinWords1(string)
  string.gsub(/\w{5,}/, &:reverse)
end

Test_Arr.each {|sentence| print spinWords1(sentence), "\n"}


# using '.map'
def spinWords2(string)
  string.split.map { |s| s.length >= 5 ? s.reverse : s }.join ' '
end

def spinWords3(string)
  string.split.map{ |s| s.length > 4 && s.reverse! || s }.join(' ')
end

Test_Arr.each {|sentence| print spinWords2(sentence), "\n"}
Test_Arr.each {|sentence| print spinWords3(sentence), "\n"}