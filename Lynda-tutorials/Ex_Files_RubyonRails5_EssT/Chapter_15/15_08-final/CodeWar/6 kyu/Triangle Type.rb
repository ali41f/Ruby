#Description:
# # Should return ᐃ type:
#  0 : if ᐃ cannot be made with given sides
#  1 : acute ᐃ
#  2 : right ᐃ
#  3 : obtuse ᐃ
#In this kata, you should calculate type of triangle with three given sides a, b and c (given in any order).

#If all angles are less than 90°, this triangle is acute and function should return 1.
#If one angle is strictly 90°, this triangle is right and function should return 2.
#If one angle more than 90°, this triangle is obtuse and function should return 3.
#If three sides cannot form triangle, or one angle is 180° (which turns triangle into segment)
# - function should return 0.

#Input parameters are sides of given triangle.
#All input values are non-negative floating point or integer numbers (or both).

Test_Arr = [[7,3,2], [2,4,6], [8,5,7], [3,4,5], [7,12,8]]


def triangle_type (a, b, c)
  x, y, z = [a,b,c].sort
  return 0 if x + y <= z
  return 2 if x*x + y*y == z*z
  if x*x + y*y < z*z; return 3; else return 1 end
end

Test_Arr.each { |x, y, z| print triangle_type(x, y, z), "\n" }




def triangle_type1(a, b, c)
  x, y, z = [a, b, c].sort
  return 0 if x + y <= z
  cs = x**2 + y**2 - z**2
  cs == 0 ? 2 : (cs > 0 ? 1 : 3)
end

Test_Arr.each { |x, y, z| print triangle_type1(x, y, z), "\n" }




def triangle_type2(a, b, c)
  a, b, c = [a, b, c].sort
  a && a + b > c ? -((a * a + b * b - c * c) <=> 0) + 2 : 0
end

Test_Arr.each { |x, y, z| print triangle_type2(x, y, z), "\n" }




def triangle_type3(*sides)
  a, b, c = sides.sort

  return 0 unless c < a + b
  return  2 + (c**2 <=> a**2 + b**2)

end

Test_Arr.each { |x, y, z| print triangle_type3(x, y, z), "\n" }