=begin
hash is a collection of key-value pairs. Hash syntax looks like this:

hash = {
  key1 => value1,
  key2 => value2,
  key3 => value3
}

=end

my_hash = { "name" => "Eric",
            "age" => 26,
            "hungry?" => true
}

puts my_hash["name"]
puts my_hash["age"]
puts my_hash["hungry?"]




=begin
You can also create a hash using Hash.new, like so:

my_hash = Hash.new

Setting a variable equal to Hash.new creates a new, empty hash; it's the same as setting the variable equal to empty curly braces ({}).
=end

pets = Hash.new
pets = { "name" => "Eric"}

puts pets["name"]

pets = Hash.new
pets["Stevie"] = "cat"
# Adds the key "Stevie" with the
# value "cat" to the hash


"""Accessing Hash Values"""

pets1 = {
    "Stevie" => "cat",
    "Bowser" => "hamster",
    "Kevin Sorbo" => "fish"
}

puts pets1["Stevie"]
puts pets1["Bowser"]
puts pets1["Kevin Sorbo"]




