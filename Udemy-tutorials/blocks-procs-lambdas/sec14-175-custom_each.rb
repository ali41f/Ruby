def custom_each(array)
	i = 0
	while i < array.length
		yield array[i]
		i += 1
	end
end

names = ["Boris", "Arnold", "Melissa"]
nimbers = [10, 20, 30]

custom_each(names) do
	puts "Then length	 of #{name} is #{name.length}!"
end

custom_each(numbers) do |nubmer|
	puts "The square of #{number} is #{number ** 2}"
end
