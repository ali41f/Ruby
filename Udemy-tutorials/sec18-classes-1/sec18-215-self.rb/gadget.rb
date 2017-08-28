class Gadget
	def initialize # this is not custom, it has to be initialize
		@username = "User #{rand(1..100)}"
		@password = "topsecret"
		@production_number = "#{("a".."z").to_a.sample}-#{rand(1..999)}"
	end

	def to_s
		"Gadget #{@production_number} has the username #{@username}. It is made from the #{self.class} class and it has the ID #{self.object_id}"
	end
end

phone = Gadget.new
laptop = Gadget.new

puts phone.to_s # self refers to Gadget obj
# similar to -->
# Gadget r-257 has the username User 43. It is made from the Gadget class and it has the ID 47385011385960
puts laptop.to_s
# similar to --> 
# Gadget i-951 has the username User 3. It is made from the Gadget class and it has the ID 47193574453760
