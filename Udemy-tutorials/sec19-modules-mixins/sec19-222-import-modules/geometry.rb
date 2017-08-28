require_relative "./rectangle.rb" # "require" doesn't work
require_relative "./square.rb"
require_relative "./circle.rb"

puts Circle.area(10)
puts Rectangle.area(13, 9)
puts Square.area(7)
