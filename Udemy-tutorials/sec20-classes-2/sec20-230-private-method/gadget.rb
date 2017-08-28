class Gadget

	attr_accessor :username
	attr_reader :production_number
	attr_writer :password

	def initialize(username, password)
		@username = username
		@password = password
		@production_number = generate_production_number
	end

	def to_s
		"Gadget #{@production_number} has the username #{@username}. It is made from the #{self.class} class and it has the ID #{self.object_id}"
	end

	# private # make the methods below private and not accessed by public
	# returning --> private method `generate_production_number' called for #<Gadget:0x0056343f965798> (NoMethodError)

	def generate_production_number
		start_digits = rand(10000..99999)
		end_digits = rand(10000..99999)
		alphabet = ("A".."Z").to_a
		middle_digits = "2017"
		5.times { middle_digits << alphabet.sample}
		"#{start_digits} - #{middle_digits} - #{end_digits}"
	end
end

phone = Gadget.new("user", "password")
# phone.initialize
# --> private method `initialize' called for #<Gadget:0x0055e8f7706e90> (NoMethodError)

p phone.production_number
# one sample --> "44281 - 2017ODZCR - 21767"
p phone.generate_production_number
# one sample --> "35177 - 2017ZWVRS - 28192"
