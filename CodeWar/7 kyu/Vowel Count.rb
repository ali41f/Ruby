def getCount(inputStr)
  count = 0
  vowels = /[aeiou]/
  inputStr.each_char do |char|
    if char.match(vowels)
      count += 1
    end
  end
  count # means "return count", "return" negligible
end

print getCount("abracaAdabra"),"\n" # didn't think of uppercase




def getCount1(inputStr)
  inputStr.count("aeiou")
end

print getCount1("abracaAdabra"),"\n"

# more precisely, taking account of capitals
def getCount2(inputStr)
  inputStr.downcase.count('aeiou')
end

print getCount2("abracaAdabra"),"\n"




def getCount3(inputStr)
  inputStr.scan(/[aeiou]/i).size
end

print getCount3("abracaAdabra"),"\n"




def getCount4(inputStr)
  array = []
  word = inputStr.downcase.split("")

  word.each do |i|
    if i == 'a'
      array << i
    elsif i == 'o'
      array << i
    elsif i =='i'
      array << i
    elsif i == 'u'
      array << i
    elsif i == 'e'
      array << i
    end
  end

  p array.length
end

print getCount4("abracaAdabra"),"\n"

