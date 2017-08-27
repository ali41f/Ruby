market = {
	garlic: "3 cloves",
	tomatoes: "5 batches",
	milk: "10 gallons"
}

kitchen = {
	bread: "2 loaves",
	yogurt: "20 cans",
	milk: "100 gallons"
}

p market.merge(kitchen)
# --> {:garlic=>"3 cloves", :tomatoes=>"5 batches", :milk=>"100 gallons", :bread=>"2 loaves", :yogurt=>"20 cans"}
# when duplicating keys, in this case milk, ruby keeps the key value pair in the arg being merged, in this case: milk: "100 gallons"

# kitchen.merge!(market)
# p kitchen
# # --> {:bread=>"2 loaves", :yogurt=>"20 cans", :milk=>"10 gallons", :garlic=>"3 cloves", :tomatoes=>"5 batches"}


def custom_merge(hash1, hash2)
	new_hash = hash1.dup # create a copy of obj, make sure the arg passed as hash1 is not being overwritten
	hash2.each do |key, value|
		new_hash[key] = value
	end
	new_hash
end

p custom_merge(market, kitchen)
# --> {:garlic=>"3 cloves", :tomatoes=>"5 batches", :milk=>"100 gallons", :bread=>"2 loaves", :yogurt=>"20 cans"}
# the values in hash2 is overwritting values in hash1, in this case returning :milk=>"100 gallons"
p market
p kitchen
# original hashes are not mutated, thus isolated the process
