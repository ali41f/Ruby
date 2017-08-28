# file name should mirror the class name inside, ideally one class defined per file
class Gadget

end

puts Gadget.superclass # --> Object

phone = Gadget.new
laptop = Gadget.new
microwave = Gadget.new

puts phone # --> #<Gadget:0x005602b2dabf00>
puts laptop # --> #<Gadget:0x005602b2dabed8>
puts microwave # --> #<Gadget:0x005602b2dabeb0>

puts phone.is_a?(Gadget) # --> true
puts phone.is_a?(Object) # --> true
puts phone.is_a?(BasicObject) # --> true

puts phone.respond_to?(:class) # --> true
puts phone.respond_to?(:methods) # --> true
puts phone.respond_to?(:is_a?) # --> true
puts phone.respond_to?(:respond_to?) # --> true
puts phone.respond_to?(:length) # --> false
