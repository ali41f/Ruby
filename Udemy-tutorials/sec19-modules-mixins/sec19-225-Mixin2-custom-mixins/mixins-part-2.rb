# mixin is a module that injects additional behaviour into a class
# mixins allows us to mimic inheritance from more than one class
# diff classes not easy to trace the class hierarchy
# class that includes a module has access to its methods and const
# const and methods mixed into a class do not need to be prefixed with the module name

# Modules (Mixins) vs. inheritance
# Class inheritance should be used for an is-a relationship
# --> Arr is a type of Obj; Fixnum is a type of Integer
# Modules should be used for a has-a relationship. It adds functionality
# --> String has a Comparable feature set

# order that modules are included in a class matters
# Ruby looks at the last module included in the class first
# If multiple modules mix in methods with the same name, the last module included in the class definiation will be user first
# Ruby will throw an err if the method is not found in the class, the modules or any superclasses

module Purchaseable
	def purchase(item)
		"#{item} has been purchased!"
	end

end

class Bookstore
	include Purchaseable
end

class Supermarket
	include Purchaseable
end

class CornerMart < Supermarket

end

barnes_and_noble = Bookstore.new
p barnes_and_noble.purchase("Atlas Shrugged") # --> "Atlas Shrugged has been purchased!"

shoprite = Supermarket.new
p shoprite.purchase("Ice cream") # --> "Ice cream has been purchased!"

quickstop = CornerMart.new
p quickstop,purchase("Slim Jim")
