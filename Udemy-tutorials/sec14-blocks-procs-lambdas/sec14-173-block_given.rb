def pass_control_on_condition
	puts "Inside the method"
	if block_given?
		yield
	end
	puts "Back inside the method"
end

pass_control_on_condition { puts "Hello there" }
