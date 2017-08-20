cube = Proc.new { |x| x ** 3 }
[1, 2, 3].collect!(&cube)
# ==> [1, 8, 27]
[4, 5, 6].map!(&cube) # (The .collect! and .map! methods do the exact same thing.)
# ==> [64, 125, 216]

# The "&" is used to convert the cube proc into a block (since ".collect!" and ".map!" normally take a block).

=begin
Instructions
The ".floor" method rounds a float (a number with a decimal) down to the nearest integer.
Write a proc called "round_down" that will do this rounding.
=end

floats = [1.2, 3.45, 0.91, 7.727, 11.42, 482.911]

round_down = Proc.new {|num| num.floor}

ints = floats.collect(&round_down)

puts ints.join(',  ')




group_1 = [4.1, 5.5, 3.2, 3.3, 6.1, 3.9, 4.7]
group_2 = [7.0, 3.8, 6.2, 6.1, 4.4, 4.9, 3.0]
group_3 = [5.5, 5.1, 3.9, 4.3, 4.9, 3.2, 3.2]

can_ride_1 = group_1.select { |height| height >= 4 }
can_ride_2 = group_2.select { |height| height >= 4 }
can_ride_3 = group_3.select { |height| height >= 4 }

puts can_ride_1.join(',  ')
puts can_ride_2.join(',  ')
puts can_ride_3.join(',  ')

"""Rewrite using Proc.new"""

over_4_feet = Proc.new { |height| height >= 4 }

can_ride_01 = group_1.select(&over_4_feet)
can_ride_02 = group_2.select(&over_4_feet)
can_ride_03 = group_3.select(&over_4_feet)

puts can_ride_01.join(',  ')
puts can_ride_02.join(',  ')
puts can_ride_03.join(',  ')




=begin

def method_name
  yield
end

proc_name = Proc.new do
  puts "Text"
end

=end

def greeter
  yield
end

phrase = Proc.new do
  "Hello there!"
end

puts greeter(&phrase)




# Symbols, Meet Procs

numbers_array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
strings_array = numbers_array.map(&:to_s)
print numbers_array
print strings_array