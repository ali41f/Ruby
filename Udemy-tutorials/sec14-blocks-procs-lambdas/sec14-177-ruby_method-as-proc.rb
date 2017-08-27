p ["1", "2", "3"].map { |number| number.to_i }

p ["1", "2", "3"].map(&:to_i) # --> [1, 2, 3]
p [1, 2, 3].map(&:to_s) # --> ["1", "2", "3"]

p [1, 2, 3, 4, 5].select { |num| num.even? }
p [1, 2, 3, 4, 5].select(&:even?)
p [1, 2, 3, 4, 5].reject { |num| num.odd? }
p [1, 2, 3, 4, 5].reject(&:odd?)
