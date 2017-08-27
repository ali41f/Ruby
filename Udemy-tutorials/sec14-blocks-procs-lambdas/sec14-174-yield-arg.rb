def speak_the_truth
	yield("Boris") if block_given?
end

speak_the_truth { |name| puts "#{name} is brilliant" } # --> Boris is brilliant
speak_the_truth { |name| puts "#{name} is incredible" } # --> Boris is incredible

def speak_the_truth1(name)
	yield name if block_given?
end

speak_the_truth1("Boris") { |name| puts "#{name} is brilliant" }
speak_the_truth1("Sarah") { |name| puts "#{name} is brilliant"}
# better do this way cause we can change the arg passing through calling
# instead of changing the custom methods everytime
speak_the_truth1("Boris") do |name, age|
	p name
	p age
	puts "#{name} is #{age} years old"
end


def number_evaluation(num1, num2, num3)
	puts "Inside the method"
	yield(num1, num2, num3)
end

result = number_evaluation(5, 10, 15) { |num1, num2, num3| num1 * num2 * num3 }
p result
