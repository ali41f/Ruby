=begin
You can think of blocks as a way of creating methods that don't have a name.
(These are similar to anonymous functions in JavaScript or lambdas in Python.)

Blocks can be defined with either the keywords do and end or with curly braces ({}).
=end




"""How Blocks Differ from Methods"""

# method that capitalizes a word
def capitalize(string)
  puts "#{string[0].upcase}#{string[1..-1]}"
  # string[0] refers to the first character in the string; string[1..-1] refers to the range of the second through final characters.
  # Therefore, the method prints out the capitalized version of the first character and prints the second through final characters as-is.
end

capitalize("ryan") # prints "Ryan"
capitalize("jane") # prints "Jane"

# block that capitalizes each string in the array
["ryan", "jane"].each {|string| puts "#{string[0].upcase}#{string[1..-1]}"} # prints "Ryan", then "Jane"

# The capitalize method capitalizes a word, and we can continually invoke the capitalize method by name.
# However, the block that we define (following .each) will only be called once, and in the context of the array that we are iterating over.
# It appears just long enough to do some work for each, then vanishes into the night.




