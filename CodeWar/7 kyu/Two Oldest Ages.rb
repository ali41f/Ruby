# It should take an array of numbers as its argument and return the two highest numbers within the array.
# The returned value should be an array in the format [second oldest age, oldest age].

Test_Arr = []

# return the two oldest/oldest ages within the array of ages passed in.
def two_oldest_ages(ages)
  ages.delete_if { |i| i == 0 }
  ages.sort!
  return ages.last(2)
end


def two_oldest_ages1(ages)
  ages.sort.last(2)
end


def two_oldest_ages2(ages)
  ages.max(2).sort
end


def two_oldest_ages3(ages)
  ages.sort[-2, 2]
end


print two_oldest_ages([1, 3, 10, 0]),"\n" # should return [3, 10]
print two_oldest_ages1([1, 3, 10, 0]),"\n" # should return [3, 10]
print two_oldest_ages2([1, 3, 10, 0]),"\n" # should return [3, 10]
print two_oldest_ages3([1, 3, 10, 0]),"\n" # should return [3, 10]