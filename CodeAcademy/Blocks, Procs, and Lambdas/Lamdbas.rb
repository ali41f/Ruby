strings = ["leonardo", "donatello", "raphael", "michaelangelo"]
symbolize =  lambda { |x| x.to_sym }
symbols = strings.collect(&symbolize)
print symbols
puts " "




=begin
Lambdas vs. Procs
There are only two main differences between "procs" and "lambdas"

First, a lambda checks the number of arguments passed to it, while a proc does not.
This means that a lambda will throw an error if you pass it the wrong number of arguments,
whereas a proc will ignore unexpected arguments and assign nil to any that are missing.

Second, when a lambda returns, it passes control back to the calling method;
when a proc returns, it does so immediately, without going back to the calling method.
=end

def batman_ironman_proc
  victor = Proc.new { return "Batman will win!" }
  victor.call
  "Iron Man will win!"
end

puts batman_ironman_proc

def batman_ironman_lambda
  victor = lambda { return "Batman will win!" }
  victor.call
  "Iron Man will win!"
end

puts batman_ironman_lambda

# Proc says "Batman will win"
# This is because it returns immediately, without going back to the "batman_ironman_proc" method.
# Lambda, however, goes back into the method after being called,
# so the method returns the last code it evaluates: "Iron Man will win!"




=begin
Create a lambda, "symbol_filter", that takes one parameter and checks to see if that parameter ".is_a? Symbol".
Create a new variable called "symbols", and store the result of calling "my_array.select" and passing it your lambda.
=end

my_array = ["raindrops", :kettles, "whiskers", :mittens, :packages]

symbol_filter = lambda { |x| x.is_a? Symbol }

symbols = my_array.select(&symbol_filter)

print symbols




=begin
Quick Review

01. A "block" is just a bit of code between do..end or {}.
    It's not an object on its own, but it can be passed to methods like .each or .select.
02. A "proc" is a saved block we can use over and over.
03. A "lambda" is just like a proc, only it cares about the number of arguments it gets
    and it returns to its calling method rather than returning immediately.
=end