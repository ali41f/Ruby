=begin

Instructions
Output
Write a function named firstNonRepeatingCharacter that takes a string input,
and returns the first character that is not repeated anywhere in the string.

For example, if given the input 'stress', the function should return 't',
since the letter t only occurs once in the string, and occurs first in the string.

As an added challenge, upper- and lowercase letters are considered the same character,
but the function should return the correct case for the initial letter. For example, the input 'sTreSS' should return 'T'.

If a string contains all repeating characters, it should return the empty string ("").

=end

Test_Arr = ['a', 'stress', 'moonmen', '', 'qbQgToLLKSFEaWHqlbhnShUiRLcQdcvrPiEYYWeseSmSIKmtYMKYHLlBrG',
            'aXtXkVShWUdTKuORCsXqYTKQuGJQXQpQIVpZOMHg']

def  first_non_repeating_letter(s)
  return "" if s == nil || s == ""
  new_hash = Hash.new {|data, key| data[key]=0}
  result = -1
  done = false

  s.split("").each {|x| new_hash[x.downcase]+=1}

  s.split("").each_with_index do |data,index|
    if new_hash[data.downcase] == 1 && done == false
      result = index
      done = true
    end
  end
  result != -1 ? s[result] : ""
end

Test_Arr.each {|s| print first_non_repeating_letter(s), "\n"}


"""Clever Solution"""
def  first_non_repeating_letter1(s)
  s.chars.find {|i| s.downcase.count(i)==1 || s.upcase.count(i)==1} || ""
end

Test_Arr.each {|s| print first_non_repeating_letter1(s), "\n"}


def  first_non_repeating_letter2(s)
  stringmodified = s.downcase
  char_non_repeating = stringmodified.split(//).select {|v| stringmodified.count(v) == 1}.first
  char_non_repeating ? s[stringmodified.index(char_non_repeating)] : ""
end

Test_Arr.each {|s| print first_non_repeating_letter2(s), "\n"}