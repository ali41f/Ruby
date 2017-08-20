=begin

"if" and "else" are powerful, but we can get bogged down in ifs and "elsifs" if we have a lot of conditions to check.
Ruby provides us with a concise alternative: the "case" statement.

case variable_to_check
when value_1
  # Do something!
when value_2
  # Do something else!
when value_3
  # Do yet another thing!
when value_4
  # And so on and so forth
else
  # Default thing to do
end

=end


case language
  when "JS"
    puts "Websites!"
  when "Python"
    puts "Science!"
  when "Ruby"
    puts "Web apps!"
  else
    puts "I don't know!"
end

# can fold it up like so:

case language1
  when "JS" then puts "Websites!"
  when "Python" then puts "Science!"
  when "Ruby" then puts "Web apps!"
  else puts "I don't know!"
end
