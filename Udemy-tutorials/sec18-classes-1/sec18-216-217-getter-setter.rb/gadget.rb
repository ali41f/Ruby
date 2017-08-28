class Gadget
	def initialize # this is not custom, it has to be initialize
		@username = "User #{rand(1..100)}"
		@password = "topsecret"
		@production_number = "#{("a".."z").to_a.sample}-#{rand(1..999)}"
	end

	def to_s
		"Gadget #{@production_number} has the username #{@username}. It is made from the #{self.class} class and it has the ID #{self.object_id}"
	end

	def username # geeter method which gets the value without modifying, simply reads
		@username
	end
	# instance methods have access to all instance var (and can call other instance methods)

	def username=(new_username)
		@user = new_username
	end

	def production_number
		@production_number
	end

	def password=(new_password) # writter method to overwrite the password in the instance var
		@password = new_password
	end
end

phone = Gadget.new

# p phone.username
# if directly called --> undefined method `username' for #<Gadget:0x0055e34b852468> (NoMethodError)
# p phone.@username
# if directly called --> syntax error, unexpected tIVAR, expecting '('p phone.@username


p phone.username
p phone.username=("rubyman") # --> "rubyman"
p phone.username

p phone.password=("bestpasswordevers")
