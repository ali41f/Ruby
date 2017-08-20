# library sorting code
books = ["Charlie and the Chocolate Factory", "War and Peace", "Utopia", "A Brief History of Time", "A Wrinkle in Time"]

books.sort!
# sort Returns a new array created by sorting self while sort! Sorts self in place, it is written in the documentation you posted


"""The Combined Comparison Operator"""

book_1 = "A Wrinkle in Time"

book_2 = "A Brief History of Time"

book_1 <=> book_2

# We can also use a new operator called the combined comparison operator to compare two Ruby objects.
# The combined comparison operator looks like this: "<=>".
# It returns 0 if the first operand (item to be compared) equals the second, 1 if first operand is greater than the second, and -1 if the first operand is less than the second.

# A block that is passed into the sort method must return either 1, 0, -1.
# It should return -1 if the first block parameter should come before the second, 1 if vice versa,
# and 0 if they are of equal weight, meaning one does not come before the other (i.e. if two values are equal).


books = ["Charlie and the Chocolate Factory", "War and Peace", "Utopia", "A Brief History of Time", "A Wrinkle in Time"]

# To sort our books in ascending order, in-place
print books.sort! { |firstBook, secondBook| firstBook <=> secondBook },"\n"

# Sort your books in descending order, in-place below
descending = -1
print books.sort! { |firstBook, secondBook| (firstBook <=> secondBook)*descending }

