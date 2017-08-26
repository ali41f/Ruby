pokemon = {
	squirtle: "Water",
	bulbasaur: "Grass",
	charizard: "Fire"
}

p pokemon.sort # default sorting by key in alphabetical order
# --> [[:bulbasaur, "Grass"], [:charizard, "Fire"], [:squirtle, "Water"]]
p pokemon.sort.class

p pokemon.sort.reverse
# --> [[:squirtle, "Water"], [:charizard, "Fire"], [:bulbasaur, "Grass"]]

puts # just returning a blank line for spacing

p pokemon.sort_by { |pokemon, type| pokemon }
# --> [[:bulbasaur, "Grass"], [:charizard, "Fire"], [:squirtle, "Water"]]
# exactly the same results as above as sorting by key
p pokemon.sort_by { |pokemon, type| type }
# --> [[:charizard, "Fire"], [:bulbasaur, "Grass"], [:squirtle, "Water"]]
# sorting by key in alphabetical order of value
