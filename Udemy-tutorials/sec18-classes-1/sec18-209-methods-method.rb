# .methods method returns an array of all available instance methods
# .methods method defined in the Kernel module

# puts 5.methods
# p 5.methods.length # --> 137

fixnum_methods = 5.methods.sort
float_methods = 3.14.methods.sort

p fixnum_methods & float_methods # print out methods in common

p fixnum_methods - float_methods
# -- > [:&, :<<, :>>, :[], :^, :bit_length, :chr, :digits, :downto, :even?, :gcd, :gcdlcm, :lcm, :next, :odd?, :ord, :pred, :size, :succ, :times, :upto, :|, :~]
# unique methods to fixnums
p float_methods - fixnum_methods
# --> [:nan?, :next_float, :prev_float]
# unique methods to floats


arr_methods = [1, 2, 3].methods.sort
hash_methods = {key: "value"}.methods.sort
