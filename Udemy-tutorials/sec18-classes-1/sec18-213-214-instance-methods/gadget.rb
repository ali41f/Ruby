class Gadget
  def initialize # this is not custom, it has to be initialize
    @username = "User #{rand(1..100)}"
    @password = "topsecret"
    @production_number = "#{("a".."z").to_a.sample}-#{rand(1..999)}"
  end

  def info
    "Gadget #{@production_number} has the username #{@username}"
  end

  def to_s
    "Gadget #{@production_number} has the username #{@username}"
  end
end

phone = Gadget.new # when this Gadget.new called, initialize method automatically run
p phone.instance_variables # --> [:@username, :@password, :@production_number]

laptop = Gadget.new
p laptop.instance_variables # --> [:@username, :@password, :@production_number]

puts phone.info # smth similar to --> Gadget s-60 has the username User 62
puts laptop.info # smth similar to --> Gadget a-600 has the username User 16

# puts phone.@username # returns err as instance vars only available inside class

# puts Gadget.info
# # --> undefined method `info' for Gadget:Class (NoMethodError)

puts phone.methods.sort
# can find .info on the list as one of the instance methods can be called
puts phone.methods - Object.methods
# --> info
# returning exclusive unique method on phone

puts phone.to_s # --> Gadget u-339 has the username User 81
# instance to_s in class overrides the method to_s in object
