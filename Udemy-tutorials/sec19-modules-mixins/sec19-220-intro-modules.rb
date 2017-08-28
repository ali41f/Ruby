# module -> toolbox or container of methods and const
# modules create namespaces for methods with the same name
# modules cannot be used to create instances
# modules can be mixed into classes to add behaviour

# module names written in UpperCamelCase
# const in modules should be written in ALL CAPS
# access module methods with the dot operator (.)
# access module const with the :: symbol
# the :: sym is called the scope resolution operator

module LengthConversions

	WEBSITE = "https://github.com/Antimony51122/Ruby/tree/master/Udemy-tutorials"

	def self.miles_to_feet(miles) # self binds the method to the module itself
		# => LengthConversions.miles_to_feet(miles)
		# using self in case module name changes
		miles * 5280
	end

	def self.miles_to_inches(mile)
		feet = miles_to_feet(miles)
		feet * 12
	end

	def self.miles_to_centimeters(miles)
		inches = mile_to_inches(miles)
		inches * 2.54
	end
end

puts LengthConversions::WEBSITE # --> https://github.com/Antimony51122/Ruby/tree/master/Udemy-tutorials
puts LengthConversions.miles_to_feet(100) # --> 528000
