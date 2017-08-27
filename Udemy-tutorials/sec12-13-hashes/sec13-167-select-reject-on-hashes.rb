recipe = {
	sugar: 5,
	flour: 10,
	salt: 2,
	pepper: 4
}

high = recipe.select { |ingredient, teaspoons| teaspoons >= 5 }
p high
# --> {:sugar=>5, :flour=>10}

low = recipe.reject { |ingredient, teaspoons| teaspoons >= 5 }
p low
# --> {:salt=>2, :pepper=>4}

odds = recipe.select { |ingredient, teaspoons| teaspoons.odd? }
p odds
# --> {:sugar=>5}

even = recipe.reject { |ingredient, teaspoons| teaspoons.odd? }
p even
# --> {:flour=>10, :salt=>2, :pepper=>4}

includes_s = recipe.select { |ingredient, teaspoons| ingredient.to_s.include?("s") }
p includes_s
# --> {:sugar=>5, :salt=>2}
