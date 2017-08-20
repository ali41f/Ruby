=begin
Task:
Return the sum of the multiples of 3 and 5 below a number. Being the galactic games, the tracks can get rather large,
so your solution should work for really large numbers (greater than 1,000,000).

If we list all the natural numbers below 10 that are multiples of 3 or 5,
we get 3, 5, 6 and 9. The sum of these multiples is 23.
Finish the solution so that it returns the sum of all the multiples of 3 or 5 below the number passed in.
=end

Test_Arr = [10, 20, 100, 200, 1000, 10000, 1000000]


def solution(number)
  range = (1...number.to_i).to_a
  range.delete_if { |i| i % 3 != 0 && i % 5 != 0 }
  sum = range.inject { |a, b| a + b }
  return sum
end

Test_Arr.each { |x| print solution(x), "\n" }



def solution1(n)
  sum(3,n)+sum(5,n)-sum(15,n)
end

def sum(x,n)
  base=((n-1)/x).to_i
  return base*(base+1)/2*x
end

Test_Arr.each { |x| print solution1(x), "\n" }



def solution2(n)
  r = lambda { |x| (n - 1)/x }
  l = lambda { |x| (r[x]*r[x] - (r[x]*r[x] - r[x])/2)*x }
  l[5] + l[3] - l[15]
end

Test_Arr.each { |x| print solution2(x), "\n" }



def solution3(number)

# Getting rid of the last number so it doesn't get calculated as a multiple of
# either 3, 5, 15.

  new_number = number - 1

# Finds the number of multiples of 3, 5, and also 15! Note: 15 is needed
# because we double count it as it is divisible by both 3 and 5.

  threes  = (new_number / 3).floor
  fives  = (new_number / 5).floor
  fifteens = (new_number / 15).floor

# Formula for working out the sum of the first and last digit is: n * (n+1) / 2

  def formula(n)
    n * (n+1) / 2
  end

# Add multiples of 3 and multiples of 5, and subtract out multiples of 15
# because they are duplicated in the 3 and 5 sets

  sum_of_threes = 3  * formula(threes)
  sum_of_fives = 5  * formula(fives)
  sum_of_fifteens = 15 * formula(fifteens)

  total_sum = sum_of_threes + sum_of_fives - sum_of_fifteens
  return total_sum
end

Test_Arr.each { |x| print solution3(x), "\n" }



def solution4(number)
  sum = 0
  threes = (number-1) / 3
  fives = (number-1) / 5
  extras = fives / 3
  sum += ( threes * (threes + 1) / 2 ) * 3
  sum += ( fives * (fives + 1) / 2 ) * 5
  sum -= ( extras * (extras + 1) / 2 ) * 15
end

Test_Arr.each { |x| print solution4(x), "\n" }



def solution5(n)
  (1..15).select{|x| x%3==0 or x%5==0}.collect{|x| g2=((n-1)-x)/15; (x+15*g2+x)*(g2+1)}.inject(:+)/2
end

Test_Arr.each { |x| print solution5(x), "\n" }