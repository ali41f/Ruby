def talk_about(name, &myprc) # expecting a proc
	puts "Let me tell you about #{name}."
	myprc.call(name)
end

good_things = Proc.new do |name|
	puts "#{name} is a genius!"
	puts "#{name} is a jolly good fellow!"
end

bad_things = Proc.new do |name|
	puts "#{name} is a dolt"
	puts "I can't stand #{name}"
end

talk_about("Boris", &good_things)
# -->
# Let me tell you about Boris.
# Boris is a genius!
# Boris is a jolly good fellow!

# talk_about("Boris", good_things)
# --> talk_about': wrong number of arguments (given 2, expected 1) (ArgumentError)
