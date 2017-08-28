module A
	def speak
		"You know the deal"
	end
end

class B
	include A

	def speak
		"It is what it is!"
	end
end

obj = B.new
p obj.speak # --> "It is what it is!"
# methods in classes will override methods in module

module A1
	def speak
		"You know the deal"
	end
end

class B1
	prepend A

	def speak
		"It is what it is!"
	end
end

obj1 = B1.new
p obj1.speak # --> "You know the deal"
