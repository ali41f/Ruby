first_name = "Harry " # space behind Harry reserved for the space in the final string between words
last_name = "Potter"

p first_name + last_name

# first_name += last_name
# p first_name

# first_name = first_name.concat(last_name)
# p first_name # concat already overwrite the first_name

# p first_name << last_name << " Wizard"

p first_name.prepend(last_name)
p first_name # prepend already overwrite the first_name
