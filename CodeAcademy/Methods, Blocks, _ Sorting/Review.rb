"""Basic Methods"""
def welcome
  puts "Welcome to Ruby!"
end

puts welcome

"""Methods With Arguments"""
def welcome1(name)
  return "Hello, #{name}"
end

puts welcome1("Tony")


"""Blocks"""

numbers = [5, 2, 8]
sum = 0
numbers.each do |n|
  sum += n
end
puts sum


my_array = [1, 2, 3, 4, 5]
my_array.each { |n| puts n**2 }


"""Sorting"""

fruits = ["orange", "apple", "banana", "pear", "grapes"]
print fruits.sort! { |firstFruit, secondFruit| (firstFruit <=> secondFruit)*-1 }
