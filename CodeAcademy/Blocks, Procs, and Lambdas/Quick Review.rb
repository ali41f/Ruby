=begin
16/21 Quick Review

01. A "block" is just a bit of code between do..end or {}.
    It's not an object on its own, but it can be passed to methods like .each or .select.
02. A "proc" is a saved block we can use over and over.
03. A "lambda" is just like a proc, only it cares about the number of arguments it gets
    and it returns to its calling method rather than returning immediately.
=end




# 17/21 Block:
odds_n_ends = [:weezard, 42, "Trady Blix", 3, true, 19, 12.345]

ints = odds_n_ends.select { |x| x.is_a? Integer }

print ints
puts " "




# 18/21 Proc:
ages = [23, 101, 7, 104, 11, 94, 100, 121, 101, 70, 44]

under_100  = Proc.new { |age| age < 100 }

age = ages.select(&under_100)

print age
puts " "

# 19/21 Passing Your Proc to a Method:
youngsters = ages.select(&under_100)
print youngsters
puts " "




# 20/21 Lambda:
crew = {
    captain: "Picard",
    first_officer: "Riker",
    lt_cdr: "Data",
    lt: "Worf",
    ensign: "Ro",
    counselor: "Troi",
    chief_engineer: "LaForge",
    doctor: "Crusher"
}

first_half = lambda {|a, b| b < "M" }

# 21/21 Passing Your Lambda to a Method:
a_to_m = crew.select(&first_half)
print a_to_m

