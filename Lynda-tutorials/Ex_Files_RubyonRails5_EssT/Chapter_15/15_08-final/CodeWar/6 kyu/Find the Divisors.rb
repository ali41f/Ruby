# Description
# Create a function named divisors that takes an integer and
# returns an array with all of the integer's divisors(except for 1 and the number itself).
# If the number is prime return the string '(integer) is prime' (use Either String a in Haskell).

Test_Arr = [12, 25, 13, 15, 253, 24]

def divisors(n)
  divisors = (2...n).select{|numbers| n%numbers == 0}
  divisors.length == 0 ? "#{n} is prime" : divisors # True: is Prime;  False: divisors
end

# similarly
def divisors1(n)
  vals = (2..n/2).select{|x| n%x==0}
  vals.empty? ? "#{n} is prime" : vals # True: is Prime;  False: vals(divisors)
end

Test_Arr.each { |x| print divisors(x), "\n" }
Test_Arr.each { |x| print divisors1(x), "\n" }



require 'prime'
def divisors2(n)
  n.prime? ? "#{n} is prime" : (2...n).select{|i|n%i==0}
end

Test_Arr.each { |x| print divisors2(x), "\n" }
