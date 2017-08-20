#Desciption:
#The dragon's curve is a self-similar fractional which can be obtained by a recursive method.
#Starting with the string D0 = 'Fa', at each step simultaneously perform the following operations:
#replace 'a' with: 'aRbFR'
#replace 'b' with: 'LFaLb'
#For example (spaces added for more visibility) :

#1st iteration: Fa -> F aRbF R
#2nd iteration: FaRbFR -> F aRbFR R LFaLb FR
#After n iteration, remove 'a' and 'b'. You will have a string with 'R','L', and 'F'. 
#This is a set of instruction. Starting at the origin of a grid looking in the (0,1) direction, 
#'F' means a step forward, 'L' and 'R' mean respectively turn left and right. 
#After executing all instructions, 
#the trajectory will give a beautifull self-replicating pattern called 'Dragon Curve'

#The goal of this kata is to code a function wich takes one parameter n, 
#the number of iterations needed and return the string of instruction as defined above. For example:

#n=0, should return: 'F'
#n=1, should return: 'FRFR'
#n=2, should return: 'FRFRRLFLFR'
#n should be a number and non-negative integer. All other case should return the empty string: ''.

Test_Arr = [0, 1, 2]


def Dragon n
  return '' unless n.is_a?(Integer) && n >= 0

  string = 'Fa'
  n.times do
    string = string.gsub(/[ab]/, 'a' => 'aRbFR', 'b' => 'LFaLb')
  end
  string.gsub(/[ab]/, '')
end

Test_Arr.each { |x| print Dragon(x), "\n" }




def Dragon1 n
  return "" unless n.is_a?(Integer) && n >= 0
  str = 'Fa'
  n.times do
    str.gsub!(/[ab]/, "a" => "aRbFR", "b" => "LFaLb")
  end

  str.gsub!(/[ab]/,'')
end

Test_Arr.each { |x| print Dragon1(x), "\n" }




def Dragon2 n
  return '' if (!n.is_a? Integer) || (n < 0)
  (0...n).reduce('Fa') {|str, n| str = str.gsub(/[ab]/, 'a' => 'aRbFR', 'b' => 'LFaLb')}.delete 'ab'
end

Test_Arr.each { |x| print Dragon2(x), "\n" }




