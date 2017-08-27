sales = " I bought 9 apples, 25 bananas, and 4 oranges at the store"

# ^ in /[^]/ means exclude chars after the ^ sign
puts sales.scan(/[^aeiou]/) # --> including I at the very beginning since only excluding lowercases
puts sales.scan(/[^aeiouAEIOU]/)
puts sales.scan(/[^aeiouAEIOU,\s]/) # --> get rid of white spaces and commons as well
puts sales.scan(/[^aeiouAEIOU,\s\d]/) # --> get rid of white spaces and commons and digits
puts sales.scan(/[^aeiouAEIOU,\s\d\.]/) # --> get rid of white spaces and commons and digits
puts sales.scan(/[^aeiouAEIOU,\s\d\.]/).length # --> 24 --> number of consonances in the string
