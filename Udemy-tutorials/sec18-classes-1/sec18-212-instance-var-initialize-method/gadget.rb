# instance vars are vars belong to a specific obj
# instance vars define the obj's prop or attr
# instance vars make up the obj's state
# each obj can have a custom state

# instance begin with @
# @ called a sigil, a special char denotes the var's scope
# without @, var would be interpreted as a local var to the method it is used in

# initialize method is called immediately when an obj is instantiated from a class with the new method
# initialize method offers and opportunity to assign values to instance var in order to define the obj's state
# if no initialize method defined in the class, each obj is initialized with no state
class Gadget
	def initialize # this is not custom, it has to be initialize
		@username = "User #{rand(1..100)}"
		@password = "topsecret"
		@production_number = "#{("a".."z").to_a.sample}-#{rand(1..999)}"
	end
end

phone = Gadget.new # when this Gadget.new called, initialize method automatically run
p phone
# will get smth similar to:
# #<Gadget:0x005623f896b230 @username="User 80", @password="topsecret", @production_number="q-611">
p phone.instance_variables # --> [:@username, :@password, :@production_number]

laptop = Gadget.new
p laptop
# will get smth similar to:
#<Gadget:0x005623f896a808 @username="User 100", @password="topsecret", @production_number="q-441">
p laptop.instance_variables # --> [:@username, :@password, :@production_number]
