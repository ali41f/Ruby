#Description:
#Write a function toWeirdCase (weirdcase in Ruby) that accepts a string,
#and returns the same string with all even indexed characters in each word upper cased,
#and all odd indexed characters in each word lower cased.
#The indexing just explained is zero based, so the zero-ith index is even,
#therefore that character should be upper cased.

#The passed in string will only consist of alphabetical characters and spaces(' ').
#Spaces will only be present if there are multiple words. Words will be separated by a single space(' ').

Test_Arr = ["String", "Weird string case", 'This', 'is', 'This is a test']

def weirdcase string
  string.split(' ').map do |word|
    word.split('').each_with_index.map do |item, index|
      index.even? ? item.upcase : item.downcase
    end.join('')
  end.join(' ')
end

Test_Arr.each { |words| print weirdcase(words), "\n" }



def weirdcase1 string
  string.gsub(/(\w{1,2})/) { |s| $1.capitalize }
end

def weirdcase2 string
  string.gsub(/\w{1,2}/) { $&.capitalize }
end

def weirdcase3 string
  string.gsub /\w{,2}/, &:capitalize
end

Test_Arr.each { |words| print weirdcase1(words), "\n" }
Test_Arr.each { |words| print weirdcase2(words), "\n" }
Test_Arr.each { |words| print weirdcase3(words), "\n" }



def weirdcase4 string
  string.split.map { |word| word.scan(/..?/).map(&:capitalize).join }.join " "
end

Test_Arr.each { |words| print weirdcase4(words), "\n" }



