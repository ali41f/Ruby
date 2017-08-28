module Announcer
	def who_am_i
		"The name of this class is #{self}"
	end
end

class Dog
	include Announcer
end

class Cat
	include Announcer
end

 watson = Dog.new
 p watson.who_am_i # --> "The name of this class is #<Dog:0x0055c2c7a271c0>"

class Dog1
 	extend Announcer
end

class Cat1
 	extend Announcer
end

watson1 = Dog1.new
# p watson1.who_am_i # --> undefined method `who_am_i' for #<Dog1:0x0055f0362baa80> (NoMethodError)
p Dog1.who_am_i # --> "The name of this class is Dog1"
# the method has been extended to apply to the class itself
