class ConvenienceStore
	include Enumerable

	attr_reader :snacks

	def initialize
		@snacks = []
	end

	def add_snack(snack)
		snacks << snack
	end

	def each
		snacks.each do |snack|
			yield snack
		end
	end
end

bodega = ConvenienceStore.new
bodega.add_snack("Dortitos")
bodega.add_snack("Jolly Ranchers")
bodega.add_snack("Slim Jims")
p bodega.snacks

bodega.each { |snack| puts "#{snack} is delicious"}
# without custom each method:
# --> undefined method `each' for #<ConvenienceStore:0x0055d72b93ed30> (NoMethodError)
# with custom each method defined:
# -->
# Dortitos is delicious
# Jolly Ranchers is delicious
# Slim Jims is delicious


p bodega.any? { |snack| snack.length > 10 } # --> true
p bodega.all? { |snack| snack.length > 3 } # --> true
# any? & all? methods defined within Enumerable

p bodega.snacks # --> ["Dortitos", "Jolly Ranchers", "Slim Jims"]
p bodega.map { |snack| snack.upcase } # --> ["DORTITOS", "JOLLY RANCHERS", "SLIM JIMS"]

p bodega.select { |snack| snack.downcase.include?("j") } # --> ["Jolly Ranchers", "Slim Jims"]
