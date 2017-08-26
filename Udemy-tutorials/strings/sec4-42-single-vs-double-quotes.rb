# single quotes always intepret contents more literally
puts "Hello\nworld"
puts 'Hello\nworld'
# \ escape is not working in single quotes

# string interpolation is not working
phrase = "Hello world"
puts "#{phrase}"
puts '#{phrase}'
