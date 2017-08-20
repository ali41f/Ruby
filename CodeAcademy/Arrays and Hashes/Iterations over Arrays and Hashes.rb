friends = ["Milhouse", "Ralph", "Nelson", "Otto"]

family = { "Homer" => "dad",
           "Marge" => "mom",
           "Lisa" => "sister",
           "Maggie" => "sister",
           "Abe" => "grandpa",
           "Santa's Little Helper" => "dog"
}

friends.each { |x| puts "#{x}" }
family.each { |x, y| puts "#{x}: #{y}" }


"""Iterating Over Arrays"""

languages = ["HTML", "CSS", "JavaScript", "Python", "Ruby"]
languages.each { |x| puts "#{x}" }  # we can use any placeholder name for the bit between two | | characters.


"""Iterating Over Multidimensional Arrays"""

s = [["ham", "swiss"], ["turkey", "cheddar"], ["roast beef", "gruyere"]]

s.each do | sub_array |
  sub_array.each do | y |
    puts y
  end
end

=begin
If we just wanted to access "swiss", we could type

s[0][1]

Meaning, "bring me the second element of the first element,"

If we iterate over a regular array using:

array.each { |element| action }

=end


"""Iterating Over Hashes"""

restaurant_menu = {
    "noodles" => 4,
    "soup" => 3,
    "salad" => 2
}

restaurant_menu.each do |item, price| # we loop through the restaurant_menu hash and assign the key to item and the value to price for each iteration.
  puts "#{item}: #{price}"
end

secret_identities = {
    "The Batman" => "Bruce Wayne",
    "Superman" => "Clark Kent",
    "Wonder Woman" => "Diana Prince",
    "Freakazoid" => "Dexter Douglas"
}

secret_identities.each do |code, name|
  puts "#{code}: #{name}"
end

