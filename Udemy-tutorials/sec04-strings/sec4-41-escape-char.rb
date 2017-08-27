puts "Juliet said 'Goodbye' to Romeo"
# double quotes outside and single quotes inside
puts 'Juliet said "Goodbye" to Romeo'
# single quotes outside and double quotes inside has no issue

puts "Juliet said \"Goodbye\" to Romeo"
# escape means ignore and don't regard such double quotes as the end of a string
# the \ backslash sign will not be output,
# backslash sign telling ruby the next char coming should be ignored or treat it as literal


puts "Let's add a line break\nright here"
result = "Let's add a line break\nright here"
puts result
p result
# p gives extra info, outputing the \n part


puts "\tInsert a tab right"
# \t inserts a tab
