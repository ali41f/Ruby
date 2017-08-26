# block is few exception of rule: everything in Ruby is an obj
# block is not a method

10.times { puts 'Boris is awesome' }
# block attached to a method call

3.times do |count| # block instance variables wrapped in "| |"
	puts "we are currently loop number #{count + 1}"
	puts 'Boris is incredible!'
	puts 'so much fun learning Ruby'

end

3.times { |count| puts "currently loop number #{count + 1}" }

# use times method output the first 10 multiples of 3 (3, 6, 9...)
10.times { |count| puts "#{ (count + 1) * 3 }" }

10.times do |count|
	puts "#{3 * (count + 1)}"
end
