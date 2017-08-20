Test_Arr = [2, 4, 7, 9, 11]


# Test if number is prime
def isPrime(num)
  puts "That's not an integer." unless num.is_a? Integer
  isPrime = true
  if num < 2
    return false
  end

  for i in 2..num-1
    if num % i == 0 # divide by i, left 0, means divisible by i other than 1, itself
      isPrime = false
    end
  end

  if isPrime
    return true
  else
    return false
  end
end

Test_Arr.each { |x| print isPrime(x), "  " }
puts




require 'prime'

def isPrime1(num)
  num.prime?
end

Test_Arr.each { |x| print isPrime1(x), "  " }
puts




def isPrime2(num)
  return false if num < 2
  (2...num).to_a.select{|x| num%x == 0}.compact.empty?
end

Test_Arr.each { |x| print isPrime2(x), "  " }
puts




def isPrime3(num)
  return false if num < 2

  (2...num).each { |i|
    return false if num % i == 0
  }

  return true
end

Test_Arr.each { |x| print isPrime3(x), "  " }
puts