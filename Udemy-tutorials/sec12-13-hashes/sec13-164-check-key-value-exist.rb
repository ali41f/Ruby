cars = {
	toyota: "camry",
	chevrolet: "aveo",
	ford: "F-150",
	kia: "soul"
}

puts cars.has_key?(:ford) # --> true
puts cars.key?(:ford) # --> true
puts cars.key?(:ferrari) # --> false
puts cars.key?(25) # --> false

puts cars.key?(:chevrolet) # --> true
puts cars.key?("chevrolet") # --> false
# mind here string is not a symbol, checking key with string will give a false
puts cars.key?("chevrolet".to_sym) # --> true
# change string to symbol will return a true

puts cars.has_value?("soul") # --> true
puts cars.value?("soul") # --> true
puts cars.value?(3.14) # --> false
