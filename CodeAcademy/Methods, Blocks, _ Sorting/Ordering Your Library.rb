def alphabetize(arr, rev=false)
  # second parameter, rev (for "reverse") that will default to false if the user doesn't type in two arguments.
  # You might have noticed that our first call to alphabetize in exercise 1 was just:

  # alphabetize(books)

  # Ruby didn't see a rev, so it gave it the default value of false.

  if rev
    arr.sort { |item1, item2| item2 <=> item1 }
    # Sorting With Control Flow:
    # arr.sort.reverse! { |item1, item2| item1 <=> item2 }
  else
    arr.sort { |item1, item2| item1 <=> item2 }
  end
end

numbers = [5, 1, 3, 8]
print alphabetize(numbers, true),"\n"

books = ["Heart of Darkness", "Code Complete", "The Lorax", "The Prophet", "Absalom, Absalom!"]

puts "A-Z: #{alphabetize(books)}"
puts "Z-A: #{alphabetize(books, true)}"
