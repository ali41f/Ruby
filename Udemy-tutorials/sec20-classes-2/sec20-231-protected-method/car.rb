class Car

	def initialize(age, miles)
		base_value = 20000
		age_deduction = age * 1000
		miles_deduction = (miles / 10.to_f)
		@value = base_value - age_deduction - miles_deduction
	end

	def compare_car_with(car)
		self.value > car.value ? "Your car better": "Your car worse"
	end

	protected
	# methods below cannot be explicitly accessed
	# self.value in compare_car_with above can use this method, but cannot be accessed outside the class

	def value
		@value
	end
end

civic = Car.new(3, 30000)
fiat = Car.new(1, 20000)

p civic.compare_car_with(fiat)
# p civic.value # --> protected method `value' called for #<Car:0x0055ed894967c8 @value=14000.0> (NoMethodError)
