puts "whimper".sub("m", "s") # --> whisper
# sub takes two args, what substring looking for, and what used to replace
puts "whimper mmmmm".sub("m", "s") # --> whisper mmmmm
# sub only replace the first occurance

puts "wordplay".sub("w", "sword") # --> swordordplay

word = "asprin"
p word # --> "asprin"
word.sub!("in", "ing")
p word # --> "aspring"

puts "an apple".gsub("a", "-") # --> -n -pple
# sub replace all the occurance

puts "555 555 1234".gsub(" ", "") # --> 5555551234
puts "(555)-555 1234".gsub(" ", "").gsub("(", "").gsub(")", "").gsub("-", "")
# --> 5555551234
puts "(555)-555 1234".gsub(/[-\s\(\)]/, "")
# --> 5555551234
# combined gsub and regular expression
