def greeter
	puts "I'm inside the greeter method"
	yield
end

phrase = Proc.new do
	puts "Inside the proc"
end

greeter(&phrase)
# greeter has now arg, but proc can still be passed through

hi = Proc.new { puts "Hi there" }

# 5.times(&hi)
hi.call 
