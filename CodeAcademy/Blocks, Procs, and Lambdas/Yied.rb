# methods that accept blocks have a way of transferring control from the calling method to the block and back again.
# We can build this into the methods we define by using the "yield" keyword.

def block_test
  puts "We're in the method!"
  puts "Yielding to the block..."
  yield
  puts "We're back in the method!"
end

block_test { puts ">>> We're in the block!" }

# ==> We're in the method!
# ==> Yielding to the block...
# ==> >>> We're in the block!
# ==> We're back in the method!

# set up a series of puts statements
# so you can see when we're in the "block_test" method and when we're in the block passed to it.



def yield_name(name)
  puts "In the method! Let's yield."
  yield("Kim")
  puts "In between the yields!"
  yield(name)
  puts "Block complete! Back in the method."
end

yield_name("Eric") { |n| puts "My name is #{n}." }
yield_name("Renke") { |n| puts "My name is #{n}." }

=begin
Yielding With Parameters
01. The "yield_name" method is defined with one parameter, "name".
02. On line 8, we call the "yield_name" method and supply the argument "Eric" for the "name" parameter.
    Since "yield_name" has a "yield" statement, we will also need to supply a block.
03. Inside the method, on line 2, we first puts an introductory statement.
04. Then we yield to the block and pass in "Kim".
05. In the block, "n" is now equal to "Kim" and we puts out "My name is Kim."
06. Back in the method, we puts out that we are in between the yields.
07. Then we yield to the block again. This time, we pass in "Eric" which we stored in the "name" parameter.
08. In the block, "n" is now equal to "Eric" and we puts out "My name is Eric."
09. Finally, we puts out a closing statement.
=end



=begin
Define your own method, "double", that accepts a single parameter and yields to a block.
Then call it with a block that multiplies the number parameter by 2. You can double any number you like!

def method_name(parameter)
  yield parameter
end

method_name(argument) { block }

=end

def double(num)
  puts "In the method, lets yield"
  yield(num)
  puts "Back to the method"
end

puts double(2) {|num| num * 2}
