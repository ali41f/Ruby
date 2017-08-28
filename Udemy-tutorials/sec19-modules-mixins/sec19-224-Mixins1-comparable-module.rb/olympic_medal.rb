class OlympiMedal

	# enable access to modules as <, <=, >= , .between? ......
	include Comparable

	MEDAL_VALUES = {"Gold" => 3, "Sliver" => 2, "Bronze" => 1}

	attr_reader :type

	def initialize(type, weight)
		@type = type
		@weight = weight
	end

	def <=>(other) # comparing method
		if MEDAL_VALUES[type] < MEDAL_VALUES[other.type]
			-1
		elsif MEDAL_VALUES[type] == MEDAL_VALUES[other.type]
			0
		else
			1
		end
	end
end

bronze = OlympiMedal.new("Bronze", 5)
silver = OlympiMedal.new("Sliver", 10)
gold = OlympiMedal.new("Gold", 3)

puts bronze > silver # --> false
# due Comparable module included above, ">" method automatically defined enables direct comparison bronze with silver
# then look at each's type, then get numeric values of 1 and 2
# then <=>(other) method compares 1 and 2 obtaining bronze less than true, thus returning false

puts silver.between?(bronze, gold) # --> true
