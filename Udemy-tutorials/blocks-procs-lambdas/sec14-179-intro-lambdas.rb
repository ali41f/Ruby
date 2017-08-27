squares_proc = Proc.new { |num| num ** 2 }

p [1, 2, 3].map(&squares_proc) # --> [1, 4, 9]
p squares_proc.call(5)

squares_lambda = lambda { |num| num ** 2 }

p [1, 2, 3].map(&squares_lambda) # --> [1, 4, 9]
p squares_lambda.call(5) # --> 25


some_proc = Proc.new { |name, age| "Your name is #{name}, your age is #{age}"}
p some_proc.call("Boris", 25) # --> "Your name is Boris, your age is 25"
p some_proc.call("Boris") # --> "Your name is Boris, your age is "
p some_proc.call() # --> "Your name is , your age is "
# proc doesn't care the arg, can return default of nil

some_lambda = lambda { |name, age| "Your name is #{name}, your age is #{age}"}
p some_lambda.call("Boris", 25) # --> "Your name is Boris, your age is 25"
# p some_lambda.call("Boris") # --> wrong number of arguments (given 1, expected 2) (ArgumentError)
# p some_lambda.call() # --> wrong number of arguments (given 0, expected 2) (ArgumentError)
# lambda does care about the num of params passing through


def diet
	status = lambda { return "You gave in"}
	status.call
	"You completed the diet"
end

p diet # --> "You completed the diet"

def diet2
	status = Proc.new { return "You gave in"} # in proc, this keyword returned for entire method
	status.call
	"You completed the diet"
end

p diet2 # --> "You gave in"
