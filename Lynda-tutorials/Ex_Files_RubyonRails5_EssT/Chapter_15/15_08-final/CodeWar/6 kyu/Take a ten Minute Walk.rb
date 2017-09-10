#Description:

#You live in the city of Cartesia where all roads are laid out in a perfect grid.
#You arrived ten minutes too early to an appointment,
#so you decided to take the opportunity to go for a short walk.
#The city provides its citizens with a Walk Generating App on their phones
#-- everytime you press the button it sends you an array of one-letter strings
#representing directions to walk (eg. ['n', 's', 'w', 'e']).
#You know it takes you one minute to traverse one city block,
#so create a function that will return true if the walk the app gives you
#will take you exactly ten minutes (you don't want to be early or late!) and will,
#of course, return you to your starting point. Return false otherwise.

Test_Arr = [['n','s','n','s','n','s','n','s','n','s'], ['w','e','w','e','w','e','w','e','w','e','w','e'],
  ['w'], ['n','n','n','s','n','s','n','s','n','s']]

def isValidWalk(walk)
  walk.count('n') == walk.count('s') && walk.count('e') == walk.count('w') && walk.length == 10 ? true : false
end

Test_Arr.each { |x| print isValidWalk(x), "\n" }



def isValidWalk1(walk)
  if walk.length != 10
    return false
  end

  xsum = 0
  ysum = 0

  walk.each do |direction|
    case direction
      when 'n'
        ysum += 1
      when 's'
        ysum -= 1
      when 'e'
        xsum += 1
      when 'w'
        xsum -= 1
    end
  end

  xsum == 0 and ysum == 0

end

Test_Arr.each { |x| print isValidWalk1(x), "\n" }