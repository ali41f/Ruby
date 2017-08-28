class Gadget
	# attr_writer :password
	attr_reader :production_number
	attr_accessor :username, :password

	def initialize(username, password)
		@username = username
		@password = password
		@production_number = "#{("a".."z").to_a.sample}-#{rand(1..999)}"
	end

	def to_s
		"Gadget #{@production_number} has the username #{@username}. It is made from the #{self.class} class and it has the ID #{self.object_id}"
	end

	def password=(new_password) # custrom setter method not getter method
		if validate_password(new_password)
			@password = new_password
		end
	end

	private

	def generate_production_number
		start_digits = rand(10000..99999)
		end_digits = rand(10000..99999)
		alphabet = ("A".."Z").to_a
		middle_digits = "2017"
		5.times { middle_digits << alphabet.sample}
		"#{start_digits} - #{middle_digits} - #{end_digits}"
	end

	def validate_password(new_password)
		new_password.is_a?(String) && new_password.length >= 6 && new_password =~ /\d/
	end

end

phone = Gadget.new("rubyfan102", "programming123")
puts phone.password # --> programming123

phone.password = 123
puts phone.password # --> programming123
# because is_a?(String) will return false, "if" in validate_password will return false, password instance var will never be reset

phone.password = "test"
puts phone.password # --> programming123
# because new_password.length >= 6 will return false, "if" in validate_password will return false, password instance var will never be reset

phone.password = "computer" # --> programming123
# because new_password =~ /\d/ cannot find a digit, will return false, "if" in validate_password will return false, password instance var will never be reset

phone.password = "computer123"
puts phone.password # --> computer123
