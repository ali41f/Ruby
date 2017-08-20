=begin
Common denominators
You will have a list of rationals in the form
 { {numer_1, denom_1} , ... {numer_n, denom_n} }
or
 [ [numer_1, denom_1] , ... [numer_n, denom_n] ]
or
 [ (numer_1, denom_1) , ... (numer_n, denom_n) ]
where all numbers are positive ints.
You have to produce a result in the form
 (N_1, D) ... (N_n, D)
or
 [ [N_1, D] ... [N_n, D] ]
or
 [ (N_1', D) , ... (N_n, D) ]
or
{{N_1, D} ... {N_n, D}}
depending on the language (See Example tests)
in which D is as small as possible and
 N_1/D == numer_1/denom_1 ... N_n/D == numer_n,/denom_n.
Example:
convertFracs [(1, 2), (1, 3), (1, 4)] `shouldBe` [(6, 12), (4, 12), (3, 12)]
=end


def convert_fractions(lst)
  cm = 1
  lst.each_with_index do |x,i|
    cm = cm.lcm(lst[i][1])
  end
  lst.each_with_index do |x, i|
    lst[i][0] = cm/(lst[i][1])*(lst[i][0])
    lst[i][1] = cm
  end
  lst
end

print convert_fractions([[1, 2], [1, 3], [1, 4]]), "\n"
print convert_fractions([[2, 7], [1, 3], [1, 12]]), "\n"
print convert_fractions([[69, 130], [87, 1310], [3, 4]]), "\n"



# Better Solution
def convert_fractions1(lst)
  lcm = lst.reduce(1) { |x,y| x.lcm(y[1]) }
  lst.map { |x| [lcm/x[1]*x[0], lcm] }
end

# Similar
def convert_fractions2(lst)
  lcm = lst.map {|t| t[1]}.reduce(:lcm)
  lst.map {|t| [t[0]*lcm/t[1],lcm] }
end

print convert_fractions1([[1, 2], [1, 3], [1, 4]]), "\n"
print convert_fractions1([[2, 7], [1, 3], [1, 12]]), "\n"
print convert_fractions1([[69, 130], [87, 1310], [3, 4]]), "\n"
print convert_fractions2([[1, 2], [1, 3], [1, 4]]), "\n"
print convert_fractions2([[2, 7], [1, 3], [1, 12]]), "\n"
print convert_fractions2([[69, 130], [87, 1310], [3, 4]]), "\n"



def gcd(a, b)
  b == 0 ? a : gcd(b, a.modulo(b))
end

def lcm(a, b)
  (a * b) / gcd(a, b)
end

def convert_fractions3(lst)
  lcm = lst.map{|a,b| b}.inject(&:lcm)
  lst.map{|a,b| [a * lcm / b, lcm] }
end

print convert_fractions3([[1, 2], [1, 3], [1, 4]]), "\n"
print convert_fractions3([[2, 7], [1, 3], [1, 12]]), "\n"
print convert_fractions3([[69, 130], [87, 1310], [3, 4]]), "\n"