=begin
we can use the "=" operator to assign a value to a variable.
But what if we only want to assign a variable if it hasn't already been assigned?
We can use the conditional assignment operator: "||=". It's made up of the or (||) logical operator and the normal = assignment operator.
=end

favorite_book = nil
puts favorite_book

favorite_book ||= "Cat's Cradle"
puts favorite_book

favorite_book ||= "Why's (Poignant) Guide to Ruby"
puts favorite_book

favorite_book = "Why's (Poignant) Guide to Ruby"
puts favorite_book


favorite_language = nil
puts favorite_language

favorite_language ||= "Chinese"
puts favorite_language



"""Implicit Return"""

def multiple_of_three(n)
  n % 3 == 0 ? "True" : "False"
end

puts multiple_of_three(4)


"""Short-Circuit Evaluation"""

def a
  puts "A was evaluated!"
  return true
end

def b
  puts "B was also evaluated!"
  return true
end

puts a || b
puts "------"
puts a && b

=begin

||= is a sneaky expression that takes advantage of Ruby's natural laziness -- it basically expands to thing_a || thing_a = thing_b.
So if thing_a hasn't been set to anything, it becomes thing_b, otherwise it keeps its original value

If thing_a hasn't yet been assigned to anything, it is nil and Ruby then checks the right side of the || to see if that might be true,
which involves running the expression to set thing_a = thing_b.
If it has already been assigned a value, it just keeps that value like normal.
This is another sneaky trick used by programmers in situations like when you don't want to override whatever's already been set,
but you want something to be there (like which url originally referred the user to your site)

=end