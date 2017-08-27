def pass_control
	puts "This is inside the method!"
	yield # Pass control from method to the block
	puts "Now I'm back in side the method"
end

pass_control { puts "Now I'm inside the block!" } # because of the yield, block can be attached

=begin
-->
This is inside the method!
Now I'm inside the block!
Now I'm back in side the method
=end

# attached block inserted into "yield" place,
# then came back to the next line of "Now I'm back in side the method"

# pass_control
# as yield presenting, ruby expecting a block, if no block presenting, ruby gives err
# --> no block given (yield) (LocalJumpError)


def who_am_i
	adjective = yield
	puts "I am very #{adjective}"
end

who_am_i { "handsome" } # key word already implicit return, adding word return will trigger err
# what is last in the block will be implicitly returned

def multiple_pass
	puts "Inside the method"
	yield
	puts "Back inside the method"
	yield # last evaluation, final return
end

multiple_pass { puts "Now I'm inside the block" }
result = multiple_pass { puts "Now I'm inside the block" }
p result # --> nil
result1 = multiple_pass { "Now I'm inside the block" }
p result1
=begin
-->
Inside the method
Back inside the method
"Now I'm inside the block"
=end
