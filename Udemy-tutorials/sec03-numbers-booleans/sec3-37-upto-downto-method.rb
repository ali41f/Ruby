5.downto(1) { |i| puts "Countdown: #{i}" }
# downto going to count from 5 to 1
# 5 -> 1 value of the temporary variable

5.downto(0) do |current_number|
	puts "currently on #{current_number}"
	puts 'Hooray!'
end

puts 'Liftoff'

5.upto(10) do |num|
	puts 'moving up'
	puts "currently on #{num}"
end
