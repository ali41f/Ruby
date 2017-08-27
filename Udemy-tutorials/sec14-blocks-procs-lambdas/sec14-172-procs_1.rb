# proc is a new type of obj
# a proc is function as a saved block

a = [1, 2, 3, 4, 5]
b = [6, 7, 8, 9, 10]
c = [11, 12, 13, 14 ,15]

a_cubes = a.map { |num| num ** 3 }
b_cubes = b.map { |num| num ** 3 }
c_cubes = c.map { |num| num ** 3 }

p a_cubes
p b_cubes
p c_cubes

# keep the general functionality of one method, keep the rest in a block without dupilcating code

cubes = Proc.new { |number| number ** 3 }
a_cubes1 = a.map(&cubes) # prefixed with &, means proc obj
b_cubes1 = b.map(&cubes)
c_cubes1 = c.map(&cubes)

p a_cubes1, b_cubes1, c_cubes1


a_cubes2, b_cubes2, c_cubes2 = [a, b, c].map { |array| array.map(&cubes) }

p a_cubes2, b_cubes2, c_cubes2



currencies = [10, 20, 30, 40, 50]

to_euros = Proc.new { |currency| currency * 0.95 }
to_repees = Proc.new { |currency| currency * 68.13 }
to_pesos = Proc.new { |currency| currency * 20.67 }

p currencies.map(&to_euros)
p currencies.map(&to_repees)
p currencies.map(&to_pesos)


# Procs returning boolean
ages = [10, 60, 83, 30, 43, 25]

is_old = Proc.new do |age|
	age > 35
end

p ages.select(&is_old)
p ages.reject(&is_old)
