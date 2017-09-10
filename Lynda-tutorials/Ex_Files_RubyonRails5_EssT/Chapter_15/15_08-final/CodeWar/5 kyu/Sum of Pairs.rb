=begin

Sum of Pairs
Given a list of integers and a single sum value, return the first two values(parse from the left please)
in order of appearance that add up to form the sum.

sum_pairs([11, 3, 7, 5],         10)
#              ^--^      3 + 7 = 10
== [3, 7]

sum_pairs([4, 3, 2, 3, 4],         6)
#          ^-----^         4 + 2 = 6, indices: 0, 2 *
#             ^-----^      3 + 3 = 6, indices: 1, 3
#                ^-----^   2 + 4 = 6, indices: 2, 4
#  * entire pair is earlier, and therefore is the correct answer
== [4, 2]

sum_pairs([0, 0, -2, 3], 2)
#  there are no pairs of values that can be added to produce 2.
== None/nil/undefined (Based on the language)

sum_pairs([10, 5, 2, 3, 7, 5],         10)
#              ^-----------^   5 + 5 = 10, indices: 1, 5
#                    ^--^      3 + 7 = 10, indices: 3, 4 *
#  * entire pair is earlier, and therefore is the correct answer
== [3, 7]

=end

l1= [1, 4, 8, 7, 3, 15]
l2= [1, -2, 3, 0, -6, 1]
l3= [20, -13, 40]
l4= [1, 2, 3, 4, 1, 0]
l5= [10, 5, 2, 3, 7, 5]
l6= [4, -2, 3, 3, 4]
l7= [0, 2, 0]
l8= [5, 9, 13, -3]

Test_Arr = [[l1, 8],
            [l2, -6],
            [l3, -7],
            [l4, 2],
            [l5, 10],
            [l6, 8],
            [l7, 0],
            [l8, 10]
]

def sum_pairs(ints, s)
  result = []
  new_ints = []

  ints_hash = Hash.new {|key, value| key[value]=0}
  ints.each do |x|
    ints_hash[x] += 1
    if ints_hash[x] < 3
      new_ints << x
    end
  end

  new_ints.each_with_index do |x,i|
    (i+1).upto(new_ints.length-1) do |a|
      if x + new_ints[a] == s
        result << [x, new_ints[a]]
      end
    end
  end
  result != [] ? result.sort[0] : nil
end

Test_Arr.each {|ints, s| print sum_pairs(ints, s),"\n"}


"""Better Solution"""
def sum_pairs1(ints, s)
  seen = {}
  for i in ints do
    return [s-i, i] if seen[s-i]
    seen[i] = true
  end
  nil
end

Test_Arr.each {|ints, s| print sum_pairs1(ints, s),"\n"}



require 'set'
def sum_pairs2(ints, s)
  seen = Set.new
  ints.each { |v|
    return [s - v, v] if seen.include?(s - v)
    seen << v
  }
  nil
end

Test_Arr.each {|ints, s| print sum_pairs2(ints, s),"\n"}
