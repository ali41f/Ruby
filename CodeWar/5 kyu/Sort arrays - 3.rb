=begin
the input is an array of course-ids that are formatted in the following way:

name-yymm

The return of the function shall first be sorted by yymm, then by the name (which varies in length).
=end


# input: courses - array of course-names "name-yymm"
# output: sorted by "yymm", then "name"
def sortme(courses)
  result = []
  final = []
  courses.each do |x|
    s,f = x.split("-")
    result << [f,s]
  end
  final = result.sort_by {|a,b| a+b}
  result = []
  final.each {|x| result << [x[1]+"-"+x[0]]}
  result.flatten
end
# flatten(p1 = v1) public
# Returns a new array that is a one-dimensional flattening of this array (recursively).
# That is, for every element that is an array, extract its elements into the new array.
# If the optional level argument determines the level of recursion to flatten.

s = [ 1, 2, 3 ]           #=> [1, 2, 3]
t = [ 4, 5, 6, [7, 8] ]   #=> [4, 5, 6, [7, 8]]
a = [ s, t, 9, 10 ]       #=> [[1, 2, 3], [4, 5, 6, [7, 8]], 9, 10]
a.flatten                 #=> [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
a = [ 1, 2, [3, [4, 5] ] ]
a.flatten(1)              #=> [1, 2, 3, [4, 5]]

# flatten(*args) public
# Returns a new array that is a one-dimensional flattening of this hash.
# That is, for every key or value that is an array, extract its elements into the new array.
# Unlike Array#flatten, this method does not flatten recursively by default.
# The optional level argument determines the level of recursion to flatten.

a =  {1=> "one", 2 => [2,"two"], 3 => "three"}
a.flatten    # => [1, "one", 2, [2, "two"], 3, "three"]
a.flatten(2) # => [1, "one", 2, 2, "two", 3, "three"]

print sortme(["web-1305", "web-1304", "site-1305", "site-1304"]), "\n"
print sortme(["web-1304", "web-1305", "site-1111", "site-1305", "site-1304"]), "\n"


"""clever solution"""
def sortme1(courses)
  courses.sort_by{|a| a.split('-').reverse} # or -> courses.sort_by {|c| c.split(/-/).reverse}
end

print sortme1(["web-1305", "web-1304", "site-1305", "site-1304"]), "\n"
print sortme1(["web-1304", "web-1305", "site-1111", "site-1305", "site-1304"]), "\n"


def sortme2( courses )
  courses.sort do |one,two|
    name1,id1 = one.split '-'
    name2,id2 = two.split '-'
    if id1 == id2
      name1 <=> name2
    else
      id1 <=> id2
    end
  end
end

print sortme2(["web-1305", "web-1304", "site-1305", "site-1304"]), "\n"
print sortme2(["web-1304", "web-1305", "site-1111", "site-1305", "site-1304"]), "\n"


def sortme3( courses )
  courses.sort { |x,y| a=x.split("-"); b=y.split("-"); (a[1] <=> b[1]) != 0 ? a[1] <=> b[1] : a[0] <=> b[0] }
end


def sortme4(courses)
  courses.sort_by {|string| [string[-1], string[0]]}
end