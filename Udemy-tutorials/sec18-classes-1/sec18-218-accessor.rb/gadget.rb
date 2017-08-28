class Gadget

	attr_accessor :username
	# this above will automatically generate the two methods below

	# def username
	# 	@username
	# end
	#
	# def username=(new_username)
	# 	@user = new_username
	# end

	attr_reader :production_number
	# this above will automatically generate the reader methods below

	# def production_number
	# 	@production_number
	# end

	attr_writer :password
	# this above will automatically generate the writer methods below

	# def password=(new_password)
	# 	@password = new_password
	# end

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
p phone.username # similar to --> "User 46"
phone.username = "secretagentman"
p phone.username # --> "secretagentman"
phone.username = "rubyman101"
p phone.username # --> "rubyman101"
