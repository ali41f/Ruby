=begin
think of a Ruby symbol as a sort of name. It's important to remember that symbols aren't strings:

"string" == :string # false
=end

puts "string".object_id
puts "string".object_id # always give different object_id

puts :symbol.object_id
puts :symbol.object_id # always give 788188

# The .object_id method gets the ID of an object—it's how Ruby knows whether two objects are the exact same object.
# Run the code in the editor to see that the two "strings" are actually different objects, whereas the :symbol is the same object listed twice.

"""Symbol Syntax"""
my_first_symbol = :something
puts my_first_symbol



"""Converting Between Symbols and Strings"""

:sasquatch.to_s
# ==> "sasquatch"

"sasquatch".to_sym
# ==> :sasquatch

# The .to_s and .to_sym methods are what you're looking for!



strings = ["HTML", "CSS", "JavaScript", "Python", "Ruby"]
symbols = []
strings.each { |s| symbols.push(s.to_sym) }
print symbols, "\n"

strings1 = ["HTML", "CSS", "JavaScript", "Python", "Ruby"]
symbols1 = []
strings1.each { |s| symbols1.push(s.intern) } # use .intern. This will internalize the string into a symbol and works just like .to_sym:
print symbols1, "\n"



=begin
Symbols make good hash keys for a few reasons:

They're immutable, meaning they can't be changed once they're created;
Only one copy of any symbol exists at a given time, so they save memory;
Symbol-as-keys are faster than strings-as-keys because of the above two reasons.
=end

"""We'll look up the letter 'r' 100,000 times to see which process runs faster!"""

require 'benchmark'

string_AZ = Hash[("a".."z").to_a.zip((1..26).to_a)]
symbol_AZ = Hash[(:a..:z).to_a.zip((1..26).to_a)]

string_time = Benchmark.realtime do
  100_000.times { string_AZ["r"] }
end

symbol_time = Benchmark.realtime do
  100_000.times { symbol_AZ[:r] }
end

puts "String time: #{string_time} seconds."
puts "Symbol time: #{symbol_time} seconds."

