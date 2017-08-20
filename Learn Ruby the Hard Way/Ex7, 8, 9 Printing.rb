puts "Mary had a little lamb."
puts "Its fleece was white as #{'snow'}."
puts "And everywhere that Mary went."
puts "." * 10  # what'd that do?

end1 = "C"
end2 = "h"
end3 = "e"
end4 = "e"
end5 = "s"
end6 = "e"
end7 = "B"
end8 = "u"
end9 = "r"
end10 = "g"
end11 = "e"
end12 = "r"

# watch that print vs. puts on this line what's it do?
print end1 + end2 + end3 + end4 + end5 + end6
puts end7 + end8 + end9 + end10 + end11 + end12

# Can I use single-quotes or double-quotes to make a string or do they do different things?
# In Ruby the " (double-quote) tell Ruby to replace variables it finds with #{}, but the ' (single-quote) tells Ruby to leave the string alone and ignore any variables inside it.




formatter = "%{first} %{second} %{third} %{fourth}"

puts formatter % {first: 1, second: 2, third: 3, fourth: 4}
puts formatter % {first: "one", second: "two", third: "three", fourth: "four"}
puts formatter % {first: true, second: false, third: true, fourth: false}
puts formatter % {first: formatter, second: formatter, third: formatter, fourth: formatter}

puts formatter % {
    first: "I had this thing.",
    second: "That you could type up right.",
    third: "But it didn't sing.",
    fourth: "So I said goodnight."
}

# Should I use %{} or #{} for formatting?
# You will almost always use #{} to format your strings,
# but there are times when you want to apply the same format to multiple values. That's when %{} comes in handy.

# Why do I have to put quotes around "one" but not around true or false?
# Ruby recognizes true and false as keywords representing the concept of true and false.
# If you put quotes around them then they are turned into strings and won't work.
# You'll learn more about how these work in Exercise 27.




# Here's some new strange stuff, remember type it exactly.

days = "Mon Tue Wed Thu Fri Sat Sun"
months = "Jan\nFeb\nMar\nApr\nMay\nJun\nJul\nAug" # \n (backslash n) between the names of the months. These two characters put a new line character into the string at that point.

puts "Here are the days: #{days}"
puts "Here are the months: #{months}"

puts %q{
There's something going on here.
With these weird quote chars.
We'll be able to type as much as we like.
Even 4 lines if we want, or 5, or 6.
}