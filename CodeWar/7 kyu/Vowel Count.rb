def get_count(input_str)
  count = 0
  vowels = /[aeiou]/
  input_str.each_char do |char|
    if char.match(vowels)
      count += 1
    end
  end
  count # means "return count", "return" negligible
end

print get_count('abracaAdabra'),"\n" # didn't think of uppercase




def get_count1(input_str)
  input_str.count('aeiou')
end

print get_count1('abracaAdabra'),"\n"

# more precisely, taking account of capitals
def get_count2(input_str)
  input_str.downcase.count('aeiou')
end

print get_count2('abracaAdabra'),"\n"




def get_count3(input_str)
  input_str.scan(/[aeiou]/i).size
end

print get_count3('abracaAdabra'),"\n"




def get_count4(input_str)
  array = []
  word = input_str.downcase.split('')

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

print get_count4('abracaAdabra'),"\n"

