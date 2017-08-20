my_nums = [1, 2, 3]
puts my_nums.collect { |num| num ** 2 }
# ==> [1, 4, 9]
puts my_nums
# ==> [1, 2, 3]

# This is because ".collect" returns a copy of "my_nums", but doesn't change (or mutate) the original "my_nums" array

# If we want to do that, we can use ".collect!" with an exclamation point:
my_nums1 = [1, 2, 3]
puts my_nums1.collect! { |num| num ** 2 }
# ==> [1, 4, 9]
puts my_nums1
# ==> [1, 4, 9]


=begin

Instructions

We've created an array, "fibs", and placed the first ten Fibonacci numbers in it.
Create a new variable, "doubled_fibs", and set it equal to the result of calling "fibs.collect".
The block you pass to ".collect" should double each Fibonacci number.

=end

fibs = [1, 1, 2, 3, 5, 8, 13, 21, 34, 55]
doubled_fibs = fibs.collect { |num| num*2 }
puts doubled_fibs
